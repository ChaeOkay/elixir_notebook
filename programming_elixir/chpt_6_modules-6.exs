##Exercise: Modules - 6

#### Write a binary search
# Write a binary search that outputs each midpoint number until it finds the
# answer.
#
# Example:
# Chomp.guess(273, 1..1000)
# Is it 500
# Is it 250
# Is it 375
# Is it 312
# Is it 281
# Is it 265
# Is it 273
# 273


##########################
# Psudocode
# given range = 1..10, guess = 2
# range 1-10
# even_range_top 10/2 => midpoint
# if 5 == 2? => return true
# 5 < 2  => false
# odd_range_top 5+1/2 => 3
# 3 < 2 => false
# odd_range_top 3+1/2 => 2
# done

defmodule BinarySearch do

  def answer?(guess, actual) when guess == actual, do: show_answer(actual)
  def show_answer(answer), do: IO.puts "#{answer}"
end

BinarySearch.answer?(2, 2)
