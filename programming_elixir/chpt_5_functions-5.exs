##Exercise: Functions - 5

#### Write an anon function
# Use the & notation to rewrite the following:
# - Enum.map [1,2,3], fn x -> x + 2 end
# - Enum.each [1,2,3,4], fn x -> IO.inspect x end

Enum.map [1,2,3], &(IO.puts(&1 + 2))
Enum.each [a: "apple", b: "banana", c: "cupcake"], &(IO.inspect &1)
