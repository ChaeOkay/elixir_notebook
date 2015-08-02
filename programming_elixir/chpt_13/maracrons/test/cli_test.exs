defmodule CliTest do
  use ExUnit.Case

  import Macarons.CLI, only: [ parse_args: 1 ]

  test ":help with -h" do
    assert parse_args(["-h", "anything"]) == :help
  end

  test ":help with --help" do
    assert parse_args(["--help", "anything"]) == :help
  end

  test "three agruments" do
    assert parse_args(["user", "project", "99"]) == { "user", "project", 99 }
  end

  test "two arguments returns default third argument" do
    assert parse_args(["user", "project"]) == { "user", "project", 4 }
  end
end
