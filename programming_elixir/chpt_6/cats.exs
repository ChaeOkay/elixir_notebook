##Exercise: Modules - 1-3

#### Extend module functions
# add triple
# use both c in iex and elixir in shell to compile code
# add quadruple calling double

defmodule Cats do
  def double(number), do: number * 2
  def triple(number), do: number * 3
  def quadruple(number), do: double(number) * 2
end
