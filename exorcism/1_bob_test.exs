if System.get_env("EXERCISM_TEST_EXAMPLES") do
  Code.load_file("example.exs")
else
  Code.load_file("1_bob.exs")
end

ExUnit.start
ExUnit.configure(exclude: :pending)

defmodule TeenagerTest do
  use ExUnit.Case, async: true

  test "stating something" do
    assert Teenager.hey("Tom-ay-to, tom-aaaah-to.") == "Whatever."
  end

  test "shouting" do
    assert Teenager.hey("WATCH OUT!") == "Whoa, chill out!"
  end

  test "asking a question" do
    assert Teenager.hey("Does this cryogenic chamber make me look fat?") == "Sure."
  end

  @tag :pending
  test "talking forcefully" do
    assert Teenager.hey("Let's go make out behind the gym!") == "Whatever."
  end

  @tag :pending
  test "talking in capitals" do
    assert Teenager.hey("This Isn't Shouting!") == "Whatever."
  end

  @tag :pending
  test "shouting numbers" do
    assert Teenager.hey("1, 2, 3 GO!") == "Whoa, chill out!"
  end

  @tag :pending
  test "shouting with special characters" do
    assert Teenager.hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!") == "Whoa, chill out!"
  end

  @tag :pending
  test "shouting with no exclamation mark" do
    assert Teenager.hey("I HATE YOU") == "Whoa, chill out!"
  end

  @tag :pending
  test "statement containing question mark" do
    assert Teenager.hey("Ending with ? means a question.") == "Whatever."
  end

  @tag :pending
  test "silence" do
    assert Teenager.hey("") == "Fine. Be that way!"
  end

  @tag :pending
  test "prolonged silence" do
    assert Teenager.hey("  ") == "Fine. Be that way!"
  end

  @tag :pending
  test "only numbers" do
    assert Teenager.hey("1, 2, 3") == "Whatever."
  end

  @tag :pending
  test "question with numbers" do
    assert Teenager.hey("4?") == "Sure."
  end

  @tag :pending
  test "shouting in Russian" do
    # Hopefully this is Russian for "get out"
    assert Teenager.hey("УХОДИТЬ") == "Whoa, chill out!"
  end
end
