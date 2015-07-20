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
# Test
# answer(33, 5, 100, 0) when 33 > 5, do: div(abs(33-100)), 5, 33, 0
# answer(16, 5, 33, 0) when 16 > 5, do: div(abs(16-33)), 5, 16, 0
# answer(8, 5, 16, 0) when 8 > 5, do: div(abs(8-16)), 5, 8, 0
# answer(4, 5, 16, 0) when 4 < 5, do: div(16-4,2), 5, 16, 4
# answer(6, 5, 16, 0) when 6 > 5, do: div(abs(6-16)), 5, 6, 0
##########################

defmodule BinarySearch do
  def answer(guess, actual, upper, lower) when guess == actual, do:
    IO.puts "#{guess}"

  def answer(guess, actual, upper, lower) when guess > actual, do:
    answer(div(abs(guess-upper),2), actual, guess, lower)

  def answer(guess, actual, upper, lower) when guess < actual, do:
    answer(guess + div(abs(upper-guess),2), actual, upper, guess)
end

BinarySearch.answer(500, 273, 1000, 1)
BinarySearch.answer(500, 14, 1000, 1)
BinarySearch.answer(500, 998, 1000, 1)
