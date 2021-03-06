defmodule ExMonWeb.TrainersView do
  use ExMonWeb, :view

  alias ExMon.Trainer

  def render("create.json", %{trainer: %Trainer{id: id, name: name, inserted_at: inserted_at }}) do
    %{
      message: "Trainer created!",
      trainer: %{
        id: id,
        name: name,
        inserted_at: inserted_at
      }
    }
  end

  def render("show.json", %{trainer: %Trainer{id: id, name: name, inserted_at: inserted_at, pokemon: pokemon }}) do
    %{
        id: id,
        name: name,
        inserted_at: inserted_at,
        pokemon: pokemon

    }
  end

  def render("update.json", %{trainer: %Trainer{id: id, name: name, inserted_at: inserted_at,  updated_at: update_at}}) do
    %{
      message: "Trainer update!",
      trainer: %{
        id: id,
        name: name,
        inserted_at: inserted_at,
        updated_at: update_at
      }
    }
  end
end
