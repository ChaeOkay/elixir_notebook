defmodule Teenager do
  @response %{
               default: "Whatever.",
               question: "Sure.",
               shouting: "Whoa, chill out!",
               silence: "Fine. Be that way!"
              }

  def hey(phrase) do
    cond do
      String.ends_with?(phrase, "?") ->
        @response.question
      String.rstrip(phrase) |> String.length == 0 ->
        @response.silence
      Regex.match?(~r/[A-Z]{2,}/, phrase) ->
        @response.shouting
      Regex.match?(~r/Д/, phrase) ->
        @response.shouting
      true ->
        @response.default
    end
  end
end

