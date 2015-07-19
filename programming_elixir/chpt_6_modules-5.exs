##Exercise: Modules - 5

#### Write a recursive function
# Write function gcd(x,y) that finds greates common divisor.
# if y is zero, x is x
# it's gcd(y, rem(x,y)) otherwise

defmodule Mathy do
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))

end

IO.puts Mathy.gcd(2,0) # => 0
IO.puts Mathy.gcd(7,1) # => 1
IO.puts Mathy.gcd(21,15) # => 3
IO.puts Mathy.gcd(468, 24) # => 12
