##Exercise: Modules - 6

#### Write a binary search
# Write a binary search that outputs each midpoint number until it finds the
# answer.

#########################

defmodule BinarySearch do
  def guess(answer, range), do: (
    new_guess = div(range.last - range.first,2)
    IO.puts "Is it #{new_guess}?"
    try(answer, range, new_guess)
  )

  def try(answer, range, guess) when guess == answer, do:
    IO.puts "#{guess}"

  def try(answer, range, guess) when guess > answer, do: (
    new_guess = range.last - div(abs(guess-range.last),2)
    IO.puts "Is it #{new_guess}?"
    new_range_top = guess - 1
    try(answer, range.first..new_range_top, new_guess)
  )

  def try(answer, range, guess) when guess < answer, do: (
    new_guess = range.first + div(abs(range.last-guess),2)
    IO.puts "Is it #{new_guess}?"
    new_range_bottom = guess + 1
    try(answer, new_range_bottom..range.last, guess + new_guess)
  )

  def try(answer, range, guess), do:
    IO.puts "I think something went wrong :( #{guess}"
end

BinarySearch.guess(2, 1..10)
BinarySearch.guess(273, 1..1000)
BinarySearch.guess(784, 1..1000)
