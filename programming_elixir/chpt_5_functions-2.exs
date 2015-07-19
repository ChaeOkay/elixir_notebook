##Exercise: Functions - 2

#### Write an anon function
# If the first 2 args are 0 return "FizzBuzz".
# If the first is 0 return "Fizz".
# If the second is zero return "Buzz".
# Otherwise return number.
# Do not use other language features not yet covered.

fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, number -> "#{number}"
end

IO.puts fizz_buzz.(0, 0, 1)
IO.puts fizz_buzz.(0, 1, 1)
IO.puts fizz_buzz.(1, 0, 1)
IO.puts fizz_buzz.(1, 1, 1)
