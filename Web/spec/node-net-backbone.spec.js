(function() {

  describe("Sample Test", function() {
    it("should pass becuase it does nothing", function() {
      return expect("hello").toEqual("hello");
    });
    it("should pass  becuase it does nothing", function() {
      return expect("goodbye").not.toEqual("hello");
    });
    it("shows asynchronous test", function() {
      setTimeout((function() {
        expect("second").toEqual("second");
        return asyncSpecDone();
      }), 1);
      expect("first").toEqual("first");
      return asyncSpecWait();
    });
    return it("shows asynchronous test node-style", function(done) {
      setTimeout((function() {
        expect("second").toEqual("second");
        return done();
      }), 1);
      return expect("first").toEqual("first");
    });
  });

}).call(this);
