##Exercise: Lists - 1

#### Write a mapsum that takes a list and a function.
# MyList.mapsum [1,2,3], &(&1 * 1) => 14

defmodule MyList do
  def mapsum([], _function ), do: 0
  def mapsum([ head | tail ], function), do:
    function.(head) + mapsum(tail, function)
end

IO.puts MyList.mapsum [1,2,3], &(&1 * &1)
