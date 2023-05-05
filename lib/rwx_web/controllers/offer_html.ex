defmodule RwxWeb.OfferHTML do
  use RwxWeb, :html

  embed_templates "offer_html/*"

  def offer_list(assigns) do
    ~H"""
      <.offer_card />
      <.offer_card />
      <.offer_card />
    """
  end

  def offer_card(assigns) do
    ~H"""
      <p>offer card</p>
    """
  end
end
