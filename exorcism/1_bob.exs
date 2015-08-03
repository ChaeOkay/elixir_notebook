defmodule Teenager do
  @response %{
               default: "Whatever.",
               question: "Sure.",
               shouting: "Whoa, chill out!",
              }

  def hey(phrase) do
    cond do
      String.ends_with?(phrase, "?") ->
        @response.question
      Regex.match?(~r/[A-Z]{2,}/, phrase) ->
        @response.shouting
      true ->
        @response.default
    end
  end
end

