##Exercise: Lists - 0

#### Write a sum function without an accumulator

defmodule Nacho do
  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)
end

IO.puts Nacho.sum([1,2,3])
