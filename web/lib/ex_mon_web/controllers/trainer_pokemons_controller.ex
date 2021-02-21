defmodule ExMonWeb.TrainerPokemonsController do
  use ExMonWeb, :controller

  action_fallback ExMonWeb.FallbackController

  def create(conn, params) do
    params
    |> ExMon.create_trainer_pokemon()
    |> handle_response(conn, "create.json", :created)
  end

  defp handle_response({:ok, pokemon}, conn, view, status) do
    conn
    |> put_status(status)
    |> render(view, pokemon: pokemon)
  end
  defp handle_response({:error, _chageset} = error, _conn, _view, _status), do: error
end
