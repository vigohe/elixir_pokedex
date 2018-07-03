defmodule ElixirPokedex do
  def show do
    pokemons = "charmander bulbasaur squirtle"

    pokemons
    |> String.split(" ")
  end
end
