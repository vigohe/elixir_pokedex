defmodule ElixirPokedex do
  def show do
    pokemons = "charmander bulbasur squirtle"

    pokemons
    |> String.split(" ")
  end
end
