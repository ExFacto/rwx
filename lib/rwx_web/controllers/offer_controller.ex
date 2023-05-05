defmodule RwxWeb.OfferController do
  use RwxWeb, :controller

  def index(conn, _params) do
    render(conn, :index, layout: false)
  end

  # Offers

  def new(conn, _params) do
    render(conn, :new, layout: false)
  end

  def create(conn, _params) do
    render(conn, :create, layout: false)
  end

  def review(conn, _params) do
    render(conn, :review, layout: false)
  end


  # Accepts

  def accept(conn, _params) do
    render(conn, :accept, layout: false)
  end

  def create_accept(conn, _params) do
    render(conn, :create_accept, layout: false)
  end



end
