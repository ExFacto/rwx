defmodule RwxWeb.OfferHTML do
  use RwxWeb, :html

  embed_templates "offer_html/*"

  def offer_list(assigns) do
    ~H"""
    <%= for offer <- ex_offers() do %>
      <.offer_card offer={offer} />
    <% end %>
    """
  end

  def offer_card(assigns) do
    ~H"""
    <div style="display: flex; justify-content: space-around; border: 1px solid black;">
      <div class="w-11/12 mx-auto" >
        <p><%= @offer.event.name %></p>
        <p><%= @offer.contract_description %></p>
        <%= for {outcome, payout} <- @offer.outcomes_payouts do %>
          <p><%= outcome %>: <%= payout %></p>
        <% end %>
      </div>

      <div>
        <.create_accept_button offer={@offer} />
        <br />
        <button>
        More
        </button>
      </div>
      </div>
    """
  end

  def create_accept_button(assigns) do
    ~H"""
    <.link href={"/offers/accept?offer_id=#{@offer.id}"}>Accept Offer</.link>
    """
  end

  def ex_offers() do
    [
      %{
        id: "string_id",
        outcomes_payouts: [
          {"WIN", 0},
          {"LOSE", 1},
          {"DRAW", 2},
        ],
        contract_description: "odds/payout summary goes here",
        event: %{
          name: "Test Event #1",
          description: "a test event",
          oracle: %{
            name: "Test Oracle",
            # pubkey: "02deadbeef4decadeadbeef4decadeadbeef4decadeadbeef4decadeadbeef4de",
            short_pubkey: "02deadbe",
          }
        }
      },
      %{
        id: "string_id",
        outcomes_payouts: [
          {"WIN", 0},
          {"LOSE", 1},
          {"DRAW", 2},
        ],
        contract_description: "odds/payout summary goes here",
        event: %{
          name: "Test Event #1",
          description: "a test event",
          oracle: %{
            name: "Test Oracle",
            # pubkey: "02deadbeef4decadeadbeef4decadeadbeef4decadeadbeef4decadeadbeef4de",
            short_pubkey: "02deadbe",
          }
        }
      }
    ]
  end
end
