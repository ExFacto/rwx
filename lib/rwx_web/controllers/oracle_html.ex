defmodule RwxWeb.OracleHTML do
  use RwxWeb, :html

  embed_templates "oracle_html/*"

  def oracle_list(assigns) do
    # fake data
    ~H"""
    <%= for oracle <- [%{
      name: "Test Oracle",
      pubkey: "02deadbeef4decadeadbeef4decadeadbeef4decadeadbeef4decadeadbeef4de",
      short_pubkey: "02deadbe",
      open_events: 1,
      settled_events: 10,
    }] do %>
      <.oracle_card oracle={oracle} />
    <% end %>
    """
  end

  def oracle_card(assigns) do
    ~H"""
      <div style="border: 1px solid black; background-color: grey;">
        <div>
          <h3>Oracle Card <%= @oracle.name %> [<%= @oracle.short_pubkey %>]</h3>
          <p><%= @oracle.pubkey %></p>
        </div>
        <div>
          <p>Oracle Stats</p>
          <p>Open Events: <%= @oracle.open_events %></p>
          <p>Settled Events: <%= @oracle.settled_events %></p>
        </div>
      </div>
    """
  end


end
