defmodule RwxWeb.Components.Partials do

  use Phoenix.Component
  use RwxWeb, :verified_routes

  def rwx_logo(assigns) do
    ~H"""
      <a href="#" class="flex items-center">
        <img class="h-6 mr-3 sm:h-9" alt="RWX Logo" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxNTguMjMgMTI0LjA1Ij4KICA8ZGVmcz4KICAgIDxzdHlsZT4KICAgICAgLmNscy0xIHsKICAgICAgICBmaWxsOiAjZmZmOwogICAgICB9CiAgICA8L3N0eWxlPgogIDwvZGVmcz4KICA8ZyBpZD0iTGF5ZXJfMS0yIiBkYXRhLW5hbWU9IkxheWVyIDEiPgogICAgPGc+CiAgICAgIDxwYXRoIGNsYXNzPSJjbHMtMSIgZD0iTTgwLjE1LDg1Ljc5Yy0xMy43Nyw3LjQ1LTIzLjE1LDExLjQ0LTM4LjY4LDE5LjQ1LS4wNy0uMDgtLjEzLS4xNi0uMi0uMjUsMTIuNzQtMTEuNDYsMjUuNDctMjIuOTIsMzguMjktMzQuNDYsMi41NywyLjQzLDUuMDgsNC43OCw3LjU3LDcuMTUsNS4wNyw0LjgyLDEwLjEzLDkuNjcsMTUuMjIsMTQuNDcsLjQ0LC40MiwxLjExLC44MywxLjY4LC44NCw0LjI2LC4wNyw4LjUyLC4wMywxMi43OSwuMDIsLjEzLDAsLjI2LS4xLC42LS4yMy05Ljk5LTkuOC0xOS44OS0xOS41MS0yOS45NS0yOS4zN0MxMTEuMjYsNDIsMTM0LjYsMjEsMTU3LjkzLDBjLjEsLjEsLjIsLjIxLC4zLC4zMS0xOC44OSwyMC42Mi0zNi43Nyw0Mi4yNC01NS43Nyw2Mi45OCwxMi45MSwxMi43OCwyOC43NiwyOC41LDQxLjg3LDQxLjQ4LS44NywuMDQtMS4zOSwuMDgtMS45MiwuMDgtMTMuNCwwLTI2LjgsMC00MC4xOSwuMDItMS4xLDAtMS44Ny0uMzItMi42Ni0xLjA5LTUuNzEtNS42My0xMy40Ny0xMi4yLTE5LjQxLTE3Ljk5WiIvPgogICAgICA8cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik0xMTcuMTIsMTguODdjLTEyLjg1LDExLjU2LTI1LjY5LDIzLjEyLTM4LjY3LDM0LjgtMS4xMi0xLjE2LTIuMTYtMi4yNS0zLjIyLTMuMzItNi4xOC02LjI0LTEyLjM3LTEyLjQ1LTE4LjUyLTE4LjcyLS44Mi0uODMtMS42NS0xLjE1LTIuOC0xLjE0LTQuNjIsLjA2LTkuMjQsLjAyLTEzLjg1LC4wMy0uNDksMC0uOTcsLjA0LTEuOSwuMDksMTAuNzYsMTAuMzksMjEuMjUsMjAuNSwzMS44MiwzMC43QzQ2LjY2LDgyLjI4LDIzLjQ1LDEwMy4xNywuMjUsMTI0LjA1Yy0uMDgtLjA4LS4xNy0uMTYtLjI1LS4yNSwxOS4wOC0yMC44MywzNi4xNi00MS42Nyw1NS41Ni02Mi44NS0xMi44Ny0xMi41OC0yNy42Ny0yOC4wOS00MC40Ny00MC42LC4xMS0uMiwzMC40Ny0uNzIsNDIuODUtLjY2LC44LDAsMS43NywuNDQsMi4zNiwxLDYuMjUsNS45NCwxMy40NCwxMi45NCwxOS43MSwxOSwxMi42NS03Ljc0LDI0LjI2LTEzLjQ1LDM2Ljg3LTIxLjE3LC4wOCwuMTEsLjE2LC4yMiwuMjQsLjMzWiIvPgogICAgPC9nPgogIDwvZz4KPC9zdmc+" />
        <span class="self-center text-xl font-semibold whitespace-nowrap dark:text-white">RWX</span>
      </a>
    """
  end

  def nav(assigns) do
    ~H"""
    <header>
      <nav class="bg-white border-gray-200 px-4 lg:px-6 py-2.5 dark:bg-gray-800">
        <div class="flex flex-wrap items-center justify-between max-w-screen-xl mx-auto">
            <.rwx_logo />
            <div class="items-center justify-between hidden w-full lg:flex lg:w-auto lg:order-1" id="mobile-menu-2">
                <ul class="flex flex-col mt-4 font-medium lg:flex-row lg:space-x-8 lg:mt-0">
                    <.nav_item title="Oracles" href={~p"/oracles"} />
                    <.nav_item title="Events" href={~p"/events"} />
                    <.nav_item title="Offers" href={~p"/offers"} />
                    <.nav_item title="My Contracts" href={~p"/contracts"} />
                    <.nav_item title="Wallet" href={~p"/wallet"} />
                </ul>
            </div>
        </div>
      </nav>
    </header>
    """
  end

  def nav_item(assigns) do
    ~H"""
    <li>
      <a href={@href} class="block py-2 pl-3 pr-4 text-gray-700 border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-blue-700 lg:p-0 dark:text-gray-400 lg:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-gray-700">
        <%= @title %>
      </a>
    </li>
    """
  end


  def footer(assigns) do
    ~H"""
    <footer class="p-4 bg-white sm:p-6 dark:bg-gray-800 footer">
    <div class="max-w-screen-xl mx-auto">
        <div class="md:flex sm:justify-between">
            <div class="mb-6 md:mb-0">
              <.rwx_logo />
            </div>
            <div class="text-right max-w-screen-sm">
                <div>
                    <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-white">ABOUT</h2>
                    <p class="text-sm text-gray-600 dark:text-gray-400">
                        RWX is a project engineered by Sachin Meier with the help from other geeks that met in the context of the Bitcoin Olympics Hackathon & Startup Lab | Spring of 2023
                    </p>
                </div>
            </div>
        </div>
        <hr class="my-6 border-gray-200 sm:mx-auto dark:border-gray-700 lg:my-8" />
        <div class="sm:flex sm:items-center sm:justify-between">
            <span class="text-sm text-gray-500 sm:text-center dark:text-gray-400">© 2023 <a href="#" class="hover:underline">RWX</a>. All Rights Reserved.
            </span>
            <div class="flex mt-4 space-x-6 sm:justify-center sm:mt-0">
                <.twitter />
                <.github />
            </div>
        </div>
      </div>
    </footer>
    """
  end

  def twitter(assigns) do
    ~H"""
    <a href="https://twitter.com/SachinMeier" class="text-gray-500 hover:text-gray-900 dark:hover:text-white">
      <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"><path d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84" /></svg>
    </a>
    """
  end

  def github(assigns) do
    ~H"""
      <a href="https://github.com/ExFacto/rwx" class="text-gray-500 hover:text-gray-900 dark:hover:text-white">
        <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"><path fill-rule="evenodd" d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z" clip-rule="evenodd" /></svg>
      </a>
    """
  end
end
