##Exercise: Lists - 3

#### Write a caesar(list, n) function that adds n to each list element wrapping
# if the addition results in a char greater than z.

# Notes:
# z is 122
# when 123, return letter a ([123-26] or 97)
# 122-13 = 109

defmodule MyList do
  def caesar([], _), do: smile
  def caesar([ head | tail ], codepoint_adder) when head > 109, do:
   [ head + codepoint_adder - 26 | caesar(tail, codepoint_adder) ]
  def caesar([ head | tail ], codepoint_adder), do:
   [ head  + codepoint_adder | caesar(tail, codepoint_adder) ]

  def smile, do: [32, 58, 41]
end

IO.puts MyList.caesar('ryvkve', 13)
