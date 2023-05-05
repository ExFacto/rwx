defmodule RwxWeb.ContractController do
  use RwxWeb, :controller

  def index(conn, _params) do
    render(conn, :index, layout: false)
  end
end
