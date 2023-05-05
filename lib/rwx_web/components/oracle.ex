defmodule RwxWeb.Components.Oracle do
  use Phoenix.Component
  use RwxWeb, :verified_routes

  def card(assigns) do
    example_card(assigns)
  end

  def example_card(assigns) do
    ~H"""
    <div>
      <h3>Oracle Card</h3>
    </div>
    """
  end
end
