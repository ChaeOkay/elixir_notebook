defmodule Tone do
  def question?(phrase), do: String.contains?(phrase, "?")

  def shouting?(words) when is_list(words), do: _shouting?(words, false)
  def shouting?(phrase), do: shouting?(String.split(phrase))
  defp _shouting?([], _), do: false
  defp _shouting?([head | tail], response) when response == true, do: true
  defp _shouting?([head | tail], response), do: _shouting?(tail, upcase?(head))

  defp upcase?(word), do: String.upcase(word) == word
end

defmodule Teenager do
  import Tone, only: [question?: 1, shouting?: 1]
  @response %{
               default: "Whatever.",
               question: "Sure.",
               shouting: "Whoa, chill out!",
              }

  def hey(phrase) do
    cond do
      shouting?(phrase) == true ->
        @response.shouting
      question?(phrase) == true ->
        @response.question
      true ->
        @response.default
    end
  end
end

