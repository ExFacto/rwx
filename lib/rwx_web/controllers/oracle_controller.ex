defmodule RwxWeb.OracleController do
  use RwxWeb, :controller

  def index(conn, _params) do
    render(conn, :index, layout: false)
  end

  # TODO - add a new oracle
end
