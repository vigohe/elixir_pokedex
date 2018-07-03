defmodule ElixirPokedexTest do
  use ExUnit.Case
  doctest ElixirPokedex

  test "greets the world" do
    assert ElixirPokedex.hello() == :world
  end
end
