##Exercise: Functions - 3

#### Write an anon function
# Function takes single integer, and calls the function in FizzBuzz passing it
# rem(n,3), rem(n,5), and n.Call it 7 times with the arguments 10 through 17.
# No conditional logic.

fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, number -> "#{number}"
end

remainder = fn
  number -> [rem(number,3), rem(number,5), number]
end

Enum.map 10..17, fn
  number ->
    [rem1, rem2, rem3] = remainder.(number)
    IO.puts fizz_buzz.(rem1, rem2, rem3)
end
