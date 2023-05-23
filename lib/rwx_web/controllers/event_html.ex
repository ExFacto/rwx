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
    <div id="accordion-flush" data-accordion="collapse" data-active-classes="bg-white dark:bg-gray-900 text-gray-900 dark:text-white" data-inactive-classes="text-gray-500 dark:text-gray-400">
      <h2 id={"accordion-flush-heading-#{@event.id}"}>
          <button type="button" class="flex items-center justify-between w-full py-5 font-medium text-left text-gray-500 border-b border-gray-200 dark:border-gray-700 dark:text-gray-400" data-accordion-target="#accordion-flush-body-1" aria-expanded="true" aria-controls="accordion-flush-body-1">
          <h3>Event Card <%= @event.name %> [<%= @event.oracle.short_pubkey %>]</h3>
          <svg data-accordion-icon class="w-6 h-6 rotate-180 shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </button>
      </h2>
      <div id={"accordion-flush-body-#{@event.id}"} class="hidden mb-2 text-gray-500 dark:text-gray-100" aria-labelledby="accordion-flush-heading-1">
          <div>
            <%= @event.description %>
          </div>
          <div>
            <.create_offer_button event={@event} />
          </div>
          <button>
          More
          </button>
      </div>
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
        id: 1,
        name: "Test Event #1",
        description: "a test event",
        oracle: %{
          name: "Test Oracle",
          # pubkey: "02deadbeef4decadeadbeef4decadeadbeef4decadeadbeef4decadeadbeef4de",
          short_pubkey: "02deadbe",
        }
      },
    ]
  end
end
