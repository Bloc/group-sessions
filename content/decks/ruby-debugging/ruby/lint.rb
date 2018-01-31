# the problem is return the wrong answer, set a breakpoint to find out what is wrong

def powersOfTwo(n)
  newArr = []
  (0..n)to_a.each_with_index do |x, i|
    # set a print to see what's happening
    # p i
    newArr.push(2*i)
  end

  newArr
end

puts powersOfTwo(2)
# [1,2,4]
