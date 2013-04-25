describe("Factorial", function() {
  describe("without memoization", function() {
    describe("base case", function() {
      it("is correct", function() {
        expect(factorial(1)).toBe(1);
      });
    });
    
    describe("recursion case", function() {
      it("is correct", function() {
        expect(factorial(10)).toBe(3628800);
      });
    });
  });

  describe("with memoization", function() {
    it("has the same result as the recursive implementation", function() {
      expect(memoizedFactorial(10)).toBe(factorial(10));
    });
  });
});
