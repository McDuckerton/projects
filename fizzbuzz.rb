def fizzbuzz(max)
  new_arr = []
  
  
  (1..max).each do | i |
    if (i % 3 == 0 && i % 5 == 0)
      new_arr << new_fizz_buzz = "FizzBuzz"
    elsif (i % 3 == 0 && i % 5 != 0)
      new_arr << new_fizz = "Fizz"
    elsif (i % 3 != 0 && i % 5 == 0)
      new_arr << new_buzz = "Buzz"
    else
      new_arr << i
    end
  end

  return new_arr

end

print fizzbuzz(100)
puts