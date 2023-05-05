defmodule RwxWeb.EventHTML do
  use RwxWeb, :html

  embed_templates "event_html/*"

  def event_list(assigns) do
    # fake data
    ~H"""
    <%= for event <- ex_events() do %>
      <.event_card event={event} />
    <% end %>
    """
  end

  def event_card(assigns) do
    ~H"""
      <div style="border: 1px solid black; background-color: grey;">
        <div>
          <h3>Event Card <%= @event.name %> [<%= @event.oracle.short_pubkey %>]</h3>
          <p><%= @event.description %></p>
        </div>
        <div>
          <.create_offer_button event={@event} />
        </div>
        <button>
        More
        </button>
      </div>
    """
  end

  def create_offer_button(assigns) do
    ~H"""
      <.link  href={"/offers/new?event_id=#{@event.name}"}>Create Offer</.link>
    """
  end

  def ex_events() do
    [%{
      name: "Test Event #1",
      description: "a test event",
      oracle: %{
        name: "Test Oracle",
        # pubkey: "02deadbeef4decadeadbeef4decadeadbeef4decadeadbeef4decadeadbeef4de",
        short_pubkey: "02deadbe",
      }
    },
    %{
      name: "Test Event #2",
      description: "a test event",
      oracle: %{
        name: "Test Oracle",
        # pubkey: "02deadbeef4decadeadbeef4decadeadbeef4decadeadbeef4decadeadbeef4de",
        short_pubkey: "02deadbe",
      }
    }]
  end

end
