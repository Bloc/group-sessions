// the problem is return the wrong answer, set a breakpoint to find out what is wrong

function powersOfTwo(n){
  var newArr = [];
  for (var i = 0; i <= n; i++) {
    // set a console.log to see what s happening
    newArr.push(2*i);
  }
  return newArr; 
}

powersOfTwo(2)
// [1,2,4]
