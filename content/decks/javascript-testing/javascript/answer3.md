```js
  for (i = 0; i < arr.length; i++) {
    if (arr[i - 1] % 3 == 0 && arr[i - 1] % 5 != 0) {
      arr[i - 1] = stringOne
    }
    if (arr[i - 1] % 3 == 0 && arr[i - 1] % 5 == 0) {
      arr[i - 1] = `${stringOne}${stringTwo}`
    }
  }

```
