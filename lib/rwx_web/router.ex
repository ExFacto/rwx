defmodule RwxWeb.Router do
  use RwxWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {RwxWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  # pipeline :api do
  #   plug :accepts, ["json"]
  # end

  scope "/", RwxWeb do
    pipe_through :browser

    # routes are listed in order of the user flow

    # list of oracles that the app has added & verified
    get "/oracles", OracleController, :index
    # oracles post events which are aggregated here
    get "/events", EventController, :index

    # users can see offers created by others
    get "/offers", OfferController, :index
    # users can create offers themselves
    get "/offers/new",  OfferController, :new
    # new form is submitted to create
    post "/offers/create", OfferController, :create
    # a review page allows users to review the offer before creation
    get "/offers/review", OfferController, :review
    post "/offers/review", OfferController, :review

    # users can accept other users' offers
    get "/offers/accept", OfferController, :accept
    post "/offers/accept", OfferController, :accept
    # users can confirm their acceptance of another offer
    get "/offers/confirm", OfferController, :confirm
    # users can see the contracts they've entered
    get "/contracts", ContractController, :index
    # users can change settings and view their wallet
    get "/wallet", WalletController, :index

    get "/", PageController, :home
  end

  # Other scopes may use custom stacks.
  # scope "/api", RwxWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:rwx, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: RwxWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
