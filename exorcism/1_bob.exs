defmodule Teenager do
  @response %{
               default: "Whatever.",
               question: "Sure.",
               shouting: "Whoa, chill out!",
              }

  def hey(phrase) do
    cond do
      Regex.match?(~r/[\?]$/, phrase) ->
        @response.question
      Regex.match?(~r/[A-Z]{2,}/, phrase) ->
        @response.shouting
      true ->
        @response.default
    end
  end
end

