```js
function fizzBuzzCustom(stringOne = "Fizz", stringTwo = "Buzz", numOne, numTwo) {
  let arr = [];

  for (i = 0; i < 100; i++) {
    arr.push(i +1)
  }

  for (i = 0; i < arr.length; i++) {
    if (arr[i - 1] % 3 == 0 && arr[i - 1] % 5 != 0) {
      arr[i - 1] = stringOne
    }
    if (arr[i - 1] % 3 == 0 && arr[i - 1] % 5 == 0) {
      arr[i - 1] = `${stringOne}${stringTwo}`
    }
  }

  return arr;
};
```
