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

defmodule BinarySearch do
  def guess(answer, range), do:
    try(answer, range, div(range.last - range.first,2))

  def try(answer, range, guess) when guess == answer, do:
    IO.puts "#{guess}"

  def try(answer, range, guess) when guess > answer, do:
    try(answer, range.first..guess, div(abs(guess-range.last),2))

  def try(answer, range, guess) when guess < answer, do:
    try(answer, guess..range.last, guess + div(abs(range.last-guess),2))
end

BinarySearch.guess(2, 1..10)
BinarySearch.guess(273, 1..1000)
BinarySearch.guess(784, 1..1000)
