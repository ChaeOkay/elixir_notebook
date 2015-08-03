defmodule Teenager do
  @response %{
               default: "Whatever.",
               question: "Sure.",
               shouting: "Whoa, chill out!",
               silence: "Fine. Be that way!"
              }

  def hey(phrase) do
    cond do
      String.rstrip(phrase) |> String.length == 0 ->
        @response.silence
      phrase =~ ~r/\?$/ ->
        @response.question
      phrase =~ ~r/[A-Z]{2,}/ ->
        @response.shouting
      phrase =~ ~r/Д/ ->
        @response.shouting
      true ->
        @response.default
    end
  end
end

