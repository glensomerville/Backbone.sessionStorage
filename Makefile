bin = ./node_modules/.bin

test: test-globals-amd test-commonjs

test-globals-amd:
	$(bin)/mocha-phantomjs ./spec/runner.html

test-commonjs: install ./spec/webStorage_commonjs_spec.bundled.js
	$(bin)/mocha-phantomjs ./spec/runner_commonjs.html

link install:
	@npm $@

clean:
	rm -rf node_modules ./spec/webStorage_commonjs_spec.bundled.js

./spec/webStorage_commonjs_spec.bundled.js: ./spec/webStorage_commonjs_spec.js
	$(bin)/browserify -e $< -o $@

minify:
	$(bin)/uglifyjs -o backbone.webStorage-min.js backbone.webStorage.js

# Get version number from package.json, need this for tagging.
version = $(shell node -e "console.log(JSON.parse(require('fs').readFileSync('package.json')).version)")

# npm publish, public-docs and tag
publish :
	git push
	git tag v$(version)
	git push --tags origin master
	npm publish