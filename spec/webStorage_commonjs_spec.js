describe("Backbone.webStorage in CommonJS environment", function() {

  var WebStorage = require("../backbone.webStorage");
  var Backbone = require("backbone");

  it("should be the same as the non-CommonJS usage", function(){
    assert.equal(Backbone.WebStorage, WebStorage);
  });
});
