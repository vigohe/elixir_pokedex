defmodule ElixirPokedex do
  def show do
    pokemons = "charmander bulbasaur squirtle"

    pokemons
    |> String.split(" ")
    |> Enum.map(fn pokemon -> add_stat(pokemon) end)
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

  def evolve(%{name: "charmander"}) do
    %{
      name: "Charmeleon",
      type: ["Fire"],
      evolution: "Charizard"
    }
  end

  def evolve(%{name: name}) when name == "bulbasaur" do
    %{
      name: "Ivysaur",
      type: ["Grass", "Poison"],
      evolution: "Venusaur"
    }
  end

  def evolve(%{name: name}) do
    with {:ok, name} <- get_evolution(name) do
      %{
        name: name,
        type: ["Water"],
        evolution: "Blastoise"
      }
    else
      {:error, message} -> message
    end
  end

  defp get_evolution("squirtle") do
    {:ok, "Wartortle"}
  end

  defp get_evolution(_) do
    {:error, "Upssss! you don't have evolution..."}
  end
end
