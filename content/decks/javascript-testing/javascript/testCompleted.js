describe("fizzBuzzCustom()", function(){
  it("should return 16 when given 15", function(){
    const result = fizzBuzzCustom()[15]
    expect(result).toBe(16)
  });
  it("should return FizzBuzz when given 44", function(){
    const result = fizzBuzzCustom()[44]
    expect(result).toBe("FizzBuzz")
  });

  it("fizzBuzzCustom('Hey', 'There')[25] should return 26", function(){
    const result = fizzBuzzCustom('Hey', 'There')[25]
    expect(result).toBe(26)
  });
  it("fizzBuzzCustom('Hey', 'There')[11] should return Hey", function(){
    const result = fizzBuzzCustom('Hey', 'There')[11]
    expect(result).toBe("Hey")
  });
});
