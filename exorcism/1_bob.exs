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
      Regex.match?(~r/[A-Z]{2,}/, phrase) ->
        @response.shouting
      String.rstrip(phrase) |> String.length == 0 ->
        @response.silence
      true ->
        @response.default
    end
  end
end

