defmodule RwxWeb.EventController do
  use RwxWeb, :controller

  def index(conn, _params) do
    render(conn, :index, layout: false)
  end

  # TODO - add a new event
end
