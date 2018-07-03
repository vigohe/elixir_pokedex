defmodule ElixirPokedex do
  def show do
    pokemons = "charmander bulbasaur squirtle"

    pokemons
    |> String.split(" ")
  end

  def add_stat("charmander" = pokemon) do
    %{
      name: pokemon,
      type: ["Fire"],
      evolution: "Charmeleon"
    }
  end

  def add_stat("bulbasaur" = pokemon) do
    %{
      name: pokemon,
      type: ["Grass", "Poison"],
      evolution: "Ivysaur"
    }
  end

  def add_stat("squirtle") do
    %{
      name: "squirtle",
      type: ["Water"],
      evolution: "Wartortle"
    }
  end

  def add_stat(_) do
    %{
      name: "Ditto",
      type: ["Normal"],
      evolution: nil
    }
  end
end
