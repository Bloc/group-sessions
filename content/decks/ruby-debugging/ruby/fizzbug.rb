def fizzbug(n)
  (1..n).each do |x|
    m3 = x.modulo(3) == 0
    m5 = x.modulo(5) == 0

    puts case
      when (m3 and m5) then 'FizzBuzz'
      when m3 then 'Fizz'
      when m5 then 'Buzz'
      else x
    end
  end
end
