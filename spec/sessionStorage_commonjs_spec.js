describe("Backbone.sessionStorage in CommonJS environment", function() {

  var SessionStorage = require("../backbone.sessionStorage");
  var Backbone = require("backbone");

  it("should be the same as the non-CommonJS usage", function(){
    assert.equal(Backbone.SessionStorage, SessionStorage);
  });
});
