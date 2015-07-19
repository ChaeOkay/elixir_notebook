##Exercise: Functions - 4

#### Write an anon function
# Write the function `prefix` that takes a string. it returns another function
# that takes a second string. The return after passing the second string is the
# first tring and the second string.
#
# example:
# mrs = prefix.("Mrs")
# mrs.("Smith")
# prefix.("Elixir").("Rocks")

prefix = fn
  string1 -> fn
    string2 -> IO.puts "#{string1} #{string2}"
  end
end

prefix.("Cheese").("head")
