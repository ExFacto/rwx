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
        <h2 id="accordion-flush-heading-1">
          <button type="button" class="flex items-center justify-between w-full py-5 font-medium text-left text-gray-500 border-b border-gray-200 dark:border-gray-700 dark:text-gray-400" data-accordion-target="#accordion-flush-body-1" aria-expanded="true" aria-controls="accordion-flush-body-1">
            <h3>Event Card <%= @event.name %> [<%= @event.oracle.short_pubkey %>]</h3>
            <svg data-accordion-icon class="w-6 h-6 rotate-180 shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
          </button>
        </h2>
        <div id="accordion-flush-body-1" class="hidden mb-2 text-gray-500 dark:text-gray-100" aria-labelledby="accordion-flush-heading-1"}>
          <div class="grid grid-cols-1 gap-24 sm:gap-24 sm:grid-cols-2">
              <div class="mt-8">
                  <h2 class="text-xs font-semibold text-gray-800 uppercase dark:text-gray-200">Event title</h2>
                  <p class="text-sm text-gray-600 dark:text-gray-400 mb-4">
                      <%= @event.title %>
                  </p>
                  <h2 class="text-xs font-semibold text-gray-800 uppercase dark:text-gray-200">Event description</h2>
                  <p class="text-sm text-gray-600 dark:text-gray-400 mb-4">
                      <%= @event.description %>
                  </p>
                  <h2 class="text-xs font-semibold text-gray-800 uppercase dark:text-gray-200">Oracle</h2>
                  <p class="text-sm text-gray-600 dark:text-gray-400 mb-4">
                      [3ab8ff] 3ab8ff3ab8ff3ab8ff3ab8ff3ab8ff3ab8ff3ab8ff3ab8ff
                  </p>
                  <!-- info panel start -->
                  <div id="toast-warning" class="mb-8 flex items-center w-full p-4 text-gray-500 bg-white rounded-lg shadow dark:text-gray-400 dark:bg-gray-800" role="alert">
                      <div class="inline-flex items-center justify-center flex-shrink-0 w-8 h-8 text-orange-500 bg-green-100 rounded-lg dark:bg-gray-500 dark:text-purple-100">
                          <svg fill="none" class="w-5 h-5" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                              <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 11.25l.041-.02a.75.75 0 011.063.852l-.708 2.836a.75.75 0 001.063.853l.041-.021M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9-3.75h.008v.008H12V8.25z"></path>
                          </svg>
                          <span class="sr-only">Info icon</span>
                      </div>
                      <div class="ml-3 text-sm font-normal">
                          <h2 class="text-xs font-semibold text-gray-800 uppercase dark:text-gray-200">How does Events work?</h2>
                          <p>Please describe what needs to be done here...</p>
                      </div>
                      <button type="button" class="ml-auto -mx-1.5 -my-1.5 bg-white text-gray-400 hover:text-gray-900 rounded-lg focus:ring-2 focus:ring-gray-300 p-1.5 hover:bg-gray-100 inline-flex h-8 w-8 dark:text-gray-500 dark:hover:text-white dark:bg-gray-800 dark:hover:bg-gray-700" data-dismiss-target="#toast-warning" aria-label="Close">
                          <span class="sr-only">Close</span>
                          <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                      </button>
                  </div>
                  <!-- info panel end -->
              </div>
              <div class="row-span-2">
                  <h2 class="mb-4 mt-8 text-xs font-semibold text-gray-900 uppercase dark:text-gray-200">Contract details</h2>
                  <hr class="h-px mb-8 bg-gray-200 border-0 dark:bg-gray-700">
                  <div class="grid gap-6 mb-6 md:grid-cols-2">
                      <div>
                          <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                              Total collateral
                             <!-- popover start -->
                              <button class="relative top-0.5" data-popover-target="popover-description" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                              <div data-popover id="popover-description" role="tooltip" class="absolute z-10 invisible inline-block w-64 text-sm text-gray-500 transition-opacity duration-300 bg-white border border-gray-200 rounded-lg shadow-sm opacity-0 dark:text-gray-400 dark:border-gray-600 dark:bg-gray-800">
                                  <div class="px-3 py-2 bg-gray-100 border-b border-gray-200 rounded-t-lg dark:border-gray-600 dark:bg-gray-700">
                                      <h3 class="font-semibold text-gray-900 dark:text-white">What is total collateral?</h3>
                                  </div>
                                  <div class="px-3 py-2">
                                      <p>Total collateral is</p>
                                  </div>
                                  <div data-popper-arrow></div>
                              </div>
                              <!-- popover end -->
                          </label>
                          <input type="text" id="first_name" autofocus class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats" required>
                      </div>
                      <div>
                          <label for="last_name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                              Your collateral
                              <!-- popover start -->
                              <button class="relative top-0.5" data-popover-target="popover-your-collateral" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                              <div data-popover id="popover-your-collateral" role="tooltip" class="absolute z-10 invisible inline-block w-64 text-sm text-gray-500 transition-opacity duration-300 bg-white border border-gray-200 rounded-lg shadow-sm opacity-0 dark:text-gray-400 dark:border-gray-600 dark:bg-gray-800">
                                  <div class="px-3 py-2 bg-gray-100 border-b border-gray-200 rounded-t-lg dark:border-gray-600 dark:bg-gray-700">
                                      <h3 class="font-semibold text-gray-900 dark:text-white">What is your collateral?</h3>
                                  </div>
                                  <div class="px-3 py-2">
                                      <p>Your collateral is</p>
                                  </div>
                                  <div data-popper-arrow></div>
                              </div>
                              <!-- popover end -->
                          </label>
                          <input type="text" id="last_name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats" required>
                      </div>
                  </div>

                  <div class="mb-4 flex items-center w-full p-4 text-gray-500 bg-white rounded-lg shadow dark:text-gray-400 dark:bg-gray-800" role="alert">
                      <div class="text-sm font-normal">
                          Yes
                      </div>
                      <div class="flex items-center ml-auto space-x-2">
                          <input type="text" id="small-input" class="block p-2 text-gray-900 border border-gray-300 rounded-lg bg-gray-50 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats" >
                          <!-- popover start -->
                          <button class="relative top-0.5" data-popover-target="popover-sats" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                          <div data-popover id="popover-sats" role="tooltip" class="absolute z-10 invisible inline-block w-64 text-sm text-gray-500 transition-opacity duration-300 bg-white border border-gray-200 rounded-lg shadow-sm opacity-0 dark:text-gray-400 dark:border-gray-600 dark:bg-gray-800">
                              <div class="px-3 py-2 bg-gray-100 border-b border-gray-200 rounded-t-lg dark:border-gray-600 dark:bg-gray-700">
                                  <h3 class="font-semibold text-gray-900 dark:text-white">Sats you attest on this outcome</h3>
                              </div>
                              <div class="px-3 py-2">
                                  <p>The total of all outcomes should be equal to total/your collateral</p>
                              </div>
                              <div data-popper-arrow></div>
                          </div>
                          <!-- popover end -->
                      </div>
                  </div>
                  <div class="mb-4 flex items-center w-full p-4 text-gray-500 bg-white rounded-lg shadow dark:text-gray-400 dark:bg-gray-800 event-result" role="alert">
                      <div class="text-sm font-normal">
                          No
                      </div>
                      <div class="flex items-center ml-auto space-x-2">
                          <input type="text" id="small-input" class="block w-full p-2 text-gray-900 border border-gray-300 rounded-lg bg-gray-50 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats" >
                          <!-- popover start
                          same id as above,no need for new content-->
                          <button class="relative top-0.5" data-popover-target="popover-sats" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                          <!-- popover end -->
                      </div>
                  </div>

                  <h2 class="mb-4 mt-8 text-xs font-semibold text-gray-900 uppercase dark:text-gray-200">Bitcoin details</h2>
                  <hr class="h-px mb-8 bg-gray-200 border-0 dark:bg-gray-700">

                  <label for="v-out-1" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">Input</label>
                  <div class="flex mb-3">
                      <input type="text" id="v-out-1" class="rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="previous_txid:vout">
                      <!-- popover start -->
                      <button class="relative top-0.5 ml-4 " data-popover-target="popover-general-btc-details" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                      <div data-popover id="popover-general-btc-details" role="tooltip" class="absolute z-10 invisible inline-block w-64 text-sm text-gray-500 transition-opacity duration-300 bg-white border border-gray-200 rounded-lg shadow-sm opacity-0 dark:text-gray-400 dark:border-gray-600 dark:bg-gray-800">
                          <div class="px-3 py-2 bg-gray-100 border-b border-gray-200 rounded-t-lg dark:border-gray-600 dark:bg-gray-700">
                              <h3 class="font-semibold text-gray-900 dark:text-white">General bitcoin details</h3>
                          </div>
                          <div class="px-3 py-2">
                              <p>Please provide more info about this specific input</p>
                          </div>
                          <div data-popper-arrow></div>
                      </div>
                      <!-- popover end -->
                  </div>

                  <label for="v-out-2" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">Input</label>
                  <div class="flex mb-3">
                      <input type="text" id="v-out-2" class="rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="2dd...... .. . ">
                      <!-- popover start -->
                      <button class="relative top-0.5 ml-4 " data-popover-target="popover-general-btc-details" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                  </div>
                  <label for="v-out-3" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">The input below spends a P2TR or P2WSH input. <br>Please specify the max witness size. (64 bytes for P2TR keyspend)</label>
                  <div class="flex mb-3">
                      <input type="text" id="v-out-3" class="rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="max witness bytes">
                      <!-- popover start -->
                      <button class="relative top-0.5 ml-4 " data-popover-target="popover-general-btc-details" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                  </div>

                  <label for="v-out-4" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">Input</label>
                  <div class="flex mb-3">
                      <input type="text" id="v-out-4" class="rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="previous_txid:vout">
                      <!-- popover start -->
                      <button class="relative top-0.5 ml-4 " data-popover-target="popover-general-btc-details" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                  </div>

                  <label for="v-out-5" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">Fee Rate</label>
                  <div class="flex mb-3">
                      <input type="text" id="v-out-5" class="rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats / vByte">
                      <!-- popover start -->
                      <button class="relative top-0.5 ml-4 " data-popover-target="popover-general-btc-details" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                  </div>

                  <label for="btc-add-1" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Payout address</label>
                  <div class="flex mb-3">
                      <span class="inline-flex items-center px-3 text-sm text-gray-900 bg-gray-200 border border-r-0 border-gray-300 rounded-l-md dark:bg-gray-600 dark:text-gray-400 dark:border-gray-600">
                        ₿
                      </span>
                      <input type="text" id="btc-add-1" class="rounded-none rounded-r-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="Bitcoin address">
                      <!-- popover start -->
                      <button class="relative top-0.5 ml-4 " data-popover-target="popover-general-btc-details" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                  </div>

                  <label for="btc-add-1" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Change address</label>
                  <div class="flex mb-3">
                      <span class="inline-flex items-center px-3 text-sm text-gray-900 bg-gray-200 border border-r-0 border-gray-300 rounded-l-md dark:bg-gray-600 dark:text-gray-400 dark:border-gray-600">
                        ₿
                      </span>
                      <input type="text" id="btc-add-1" class="rounded-none rounded-r-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="Change address">
                      <!-- popover start -->
                      <button class="relative top-0.5 ml-4 " data-popover-target="popover-general-btc-details" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                  </div>

                  <label for="v-out-6" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">Refund locktime</label>
                  <div class="flex mb-3">
                      <input type="text" id="v-out-6" class=" rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats / vByte">
                      <!-- popover start -->
                      <button class="relative top-0.5 ml-4 " data-popover-target="popover-general-btc-details" data-popover-placement="bottom-end" type="button"><svg class="w-4 h-4 text-gray-400 hover:text-gray-500" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg><span class="sr-only">Show information</span></button>
                  </div>

                  <div class="ml-auto mt-4 mb-4 w-full float-right pr-7">
                      <button data-modal-target="defaultModal" data-modal-toggle="defaultModal" class="w-full block text-white bg-blue-700 hover:bg-purple-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-800" type="button">
                          Review offer
                      </button>
                  </div>
              </div>
          </div>
        </div>

        <!-- accept offer modal start -->
        <div id="defaultModal" tabindex="-1" aria-hidden="true" class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative w-full max-w-2xl max-h-full">
                <!-- Modal content -->
                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                    <!-- Modal header -->
                    <div class="flex items-start justify-between p-4 border-b rounded-t dark:border-gray-600">
                        <h3 class="text-xl font-semibold text-gray-900 dark:text-white">
                            Review offer
                        </h3>
                        <button type="button" class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-hide="defaultModal">
                            <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                            <span class="sr-only">Close modal</span>
                        </button>
                    </div>
                    <!-- Modal body -->
                    <div class="p-6 space-y-6">
                        <h2 class="text-xs font-semibold text-gray-900 uppercase dark:text-purple-500">Contract details</h2>
                        <hr class="h-px mb-8 bg-gray-200 border-0 dark:bg-gray-500">

                        <div class="grid gap-6 mb-6 md:grid-cols-2">
                            <div>
                                <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                    Total collateral
                                </label>
                                <input type="text" id="first_name" class="cursor-not-allowed bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats" disabled readonly>
                            </div>
                            <div>
                                <label for="last_name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                    Your collateral
                                </label>
                                <input type="text" id="last_name" class="cursor-not-allowed bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats" disabled readonly>
                            </div>
                        </div>

                        <div class="mb-4 flex items-center w-full p-4 text-gray-500 bg-white rounded-lg shadow dark:text-gray-400 dark:bg-gray-800" role="alert">
                            <div class="text-sm font-normal">
                                Yes
                            </div>
                            <div class="flex items-center ml-auto space-x-2">
                                <input type="text" id="small-input" class="cursor-not-allowed block p-2 text-gray-900 border border-gray-300 rounded-lg bg-gray-50 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats" disabled readonly>
                            </div>
                        </div>
                        <div class="mb-4 flex items-center w-full p-4 text-gray-500 bg-white rounded-lg shadow dark:text-gray-400 dark:bg-gray-800 event-result" role="alert">
                            <div class="text-sm font-normal">
                                No
                            </div>
                            <div class="flex items-center ml-auto space-x-2">
                                <input type="text" id="small-input" class="cursor-not-allowed block w-full p-2 text-gray-900 border border-gray-300 rounded-lg bg-gray-50 sm:text-xs focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats" disabled readonly>
                            </div>
                        </div>

                        <h2 class="text-xs mb-1 font-semibold text-gray-900 uppercase dark:text-purple-500">Bitcoin details</h2>
                        <hr class="h-px mt-2 mb-8 bg-gray-200 border-0 dark:bg-gray-500">

                        <label for="v-out-1" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">Input</label>
                        <div class="flex mb-3">
                            <input type="text" id="v-out-1" class="cursor-not-allowed rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="previous_txid:vout" disabled readonly>
                        </div>

                        <label for="v-out-2" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">Input</label>
                        <div class="flex mb-3">
                            <input type="text" id="v-out-2" class="cursor-not-allowed rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="2dd...... .. . " disabled readonly>
                        </div>
                        <label for="v-out-3" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">The input below spends a P2TR or P2WSH input. <br>Please specify the max witness size. (64 bytes for P2TR keyspend)</label>
                        <div class="flex mb-3">
                            <input type="text" id="v-out-3" class="cursor-not-allowed rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="max witness bytes" disabled readonly>
                        </div>

                        <label for="v-out-4" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">Input</label>
                        <div class="flex mb-3">
                            <input type="text" id="v-out-4" class="cursor-not-allowed rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="previous_txid:vout" disabled readonly>
                        </div>

                        <label for="v-out-5" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">Fee Rate</label>
                        <div class="flex mb-3">
                            <input type="text" id="v-out-5" class="cursor-not-allowed rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats / vByte" disabled readonly>
                        </div>

                        <label for="btc-add-1" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Payout address</label>
                            <div class="flex mb-3">
                              <span class="inline-flex items-center px-3 text-sm text-gray-900 bg-gray-200 border border-r-0 border-gray-300 rounded-l-md dark:bg-gray-600 dark:text-gray-400 dark:border-gray-600">
                                ₿
                              </span>
                            <input type="text" id="btc-add-1" class="cursor-not-allowed rounded-none rounded-r-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="Bitcoin address" disabled readonly>
                        </div>

                        <label for="btc-add-1" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Change address</label>
                        <div class="flex mb-3">
                              <span class="inline-flex items-center px-3 text-sm text-gray-900 bg-gray-200 border border-r-0 border-gray-300 rounded-l-md dark:bg-gray-600 dark:text-gray-400 dark:border-gray-600">
                                ₿
                              </span>
                              <input type="text" id="btc-add-1" class="cursor-not-allowed rounded-none rounded-r-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="Change address" disabled readonly>
                        </div>

                        <label for="v-out-6" class="block mb-1 text-sm font-medium text-gray-900 dark:text-white">Refund locktime</label>
                        <div class="flex mb-3">
                            <input type="text" id="v-out-6" class="cursor-not-allowed rounded-lg bg-gray-50 border border-gray-300 text-gray-900 focus:ring-blue-500 focus:border-blue-500 block flex-1 min-w-0 w-full text-sm p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500" placeholder="0 sats / vByte" disabled readonly>
                        </div>
                    </div>

                    <!-- Modal footer -->
                    <div class="flex items-center p-6 space-x-2 border-t border-gray-200 rounded-b dark:border-gray-600">
                        <button data-modal-hide="defaultModal" type="button" class="text-white w-full bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-800">Accept offer</button>
                        <button data-modal-hide="defaultModal" type="button" class="text-gray-500 w-48 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-blue-300 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 dark:bg-gray-700 dark:text-gray-300 dark:border-gray-500 dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-600">Edit again</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- accept offer modal end -->

        <!-- accordion 2nd tab -->
        <h2 id="accordion-flush-heading-x">
            <button type="button" class="mb-12 flex items-center justify-between w-full py-5 font-medium text-left text-gray-500 border-b border-gray-200 dark:border-gray-700 dark:text-gray-400" data-accordion-target="#accordion-flush-body-x" aria-expanded="true" aria-controls="accordion-flush-body-x">
                <h3>Hello another event</h3>
                <svg data-accordion-icon class="w-6 h-6 rotate-180 shrink-0" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
            </button>
        </h2>
        <div id="accordion-flush-body-x" class="hidden mb-8 text-gray-500 dark:text-gray-100" aria-labelledby="accordion-flush-heading-x">
            <h2 class="text-xs font-semibold text-gray-800 uppercase dark:text-gray-200">hello</h2>
        </div>

    </div>
    """
  end

  def create_offer_button(assigns) do
    ~H"""
      <.link class="focus:outline-none text-white bg-purple-700 hover:bg-purple-800 focus:ring-4 focus:ring-purple-300 font-medium rounded-lg text-sm px-5 py-2.5 mb-2 dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-900"  href={"/offers/new?event_id=#{@event.name}"}>Review Offer</.link>
    """
  end

  def ex_events() do
    [%{
        id: 1,
        name: "Test Event #1",
        title: "Lorem ipsum et al",
        description: "Bitcoiners win pubkey trivia",
        oracle: %{
          name: "Test Oracle",
          # pubkey: "02deadbeef4decadeadbeef4decadeadbeef4decadeadbeef4decadeadbeef4de",
          short_pubkey: "02deadbe",
        }
      },
    ]
  end
end
