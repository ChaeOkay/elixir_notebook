##Exercise: Functions - 6

#### Write a recursive function
#Implement function `sum(n)` that recursively calculates sum.

defmodule Sum do
  def of(0), do: 0
  def of(number), do: number + of(number-1)
end
