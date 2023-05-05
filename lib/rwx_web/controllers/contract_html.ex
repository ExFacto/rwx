defmodule RwxWeb.ContractHTML do
  use RwxWeb, :html

  embed_templates "contract_html/*"

  def contract_list(assigns) do
    ~H"""
    <%= for contract <- ex_contracts() do %>
      <.contract_card contract={contract} />
    <% end %>
    """
  end

  def contract_card(assigns) do
    ~H"""
      <p>contract card <%= @contract.id %></p>
    """
  end

  def ex_contracts() do
    [%{
      id: 1
    },
  %{
      id: 2
    },
  %{
      id: 3
    }]
  end
end
