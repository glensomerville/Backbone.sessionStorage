# Backbone webStorage Adapter v0.2.0

This is simply a fork from the excellent [Backbone.localStorage](https://github.com/jeromegn/Backbone.localStorage) by Jerome Gravel-Niquet and made compatible with both window.localStorage and window.sessionStorage as a drop-in replacement for Backbone.Sync() to handle saving to a localStorage or sessionStorage database.

## Usage

Include Backbone.webStorage after having included Backbone.js:

```html
<script type="text/javascript" src="backbone.js"></script>
<script type="text/javascript" src="backbone.webStorage.js"></script>
```

Create your collections like so:

```javascript
window.SomeCollection = Backbone.Collection.extend({
  
  webStorage: new Backbone.WebStorage("SomeCollection", "localStorage"), // First param: Unique name within your app. Second param: storage type
  
  // ... everything else is normal.
  
});
```
For furher usage instructions, see [Backbone.localStorage](https://github.com/jeromegn/Backbone.localStorage).

## Acknowledgments

- [Jerome Gravel-Niquet](https://github.com/jeromegn): Full credits to Jerome for the original Backbone.localStorage solution.

## License

Licensed under MIT license

Copyright (c) 2015 Glen Somerville
Copyright (c) 2010 Jerome Gravel-Niquet

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
