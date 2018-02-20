const fizzBuzzCustom = require("./fizzbuzz.js");

describe("fizzBuzzCustom()", function(){
  it("should return 16 when given 15", function(){
    const result = fizzBuzzCustom()[15]
    expect(result).toBe(16)
  });
});

// fizzBuzzCustom()[44]                         // returns "FizzBuzz" (45 is divisible by 3 and 5)
// fizzBuzzCustom('Hey', 'There')[25]         // returns 26
// fizzBuzzCustom('Hey', 'There')[11]         // returns "Hey" (12 is divisible by 3)
// fizzBuzzCustom("What's ", "up?", 3, 7)[80] // returns "What's " (81 is divisible by 3)

