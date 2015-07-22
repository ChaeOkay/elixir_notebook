##Exercise: Lists - 2

#### Write a max(list) that returns the max number

defmodule MyList do
  def max(list), do: _max(list, 0)

  defp _max([], max_number), do: max_number
  defp _max([ head | tail ], max_number) when head >= max_number, do: _max(tail, head)
  defp _max([ head | tail ], max_number) when head < max_number, do: _max(tail, max_number)
end

IO.puts MyList.max [1,5,7,2]
