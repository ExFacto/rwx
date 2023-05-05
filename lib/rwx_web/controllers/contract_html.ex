defmodule RwxWeb.ContractHTML do
  use RwxWeb, :html

  embed_templates "contract_html/*"

  def contract_list(assigns) do
    ~H"""
      <.contract_card />
      <.contract_card />
      <.contract_card />
    """
  end

  def contract_card(assigns) do
    ~H"""
      <p>contract card</p>
    """
  end
end
