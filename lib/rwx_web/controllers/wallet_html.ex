defmodule RwxWeb.WalletHTML do
  use RwxWeb, :html

  embed_templates "wallet_html/*"

  def wallet(assigns) do
    ~H"""
    <div style="display: flex; justify-content: space-around;">
      <div class="wallet-left">
        <.summary />
        <.coin_list />
      </div>

      <div class="wallet-right">
        <.wallet_receive />
        <.wallet_send />
      </div>
    </div>
    """
  end

  def summary(assigns) do
    ~H"""
    <h2>Summary</h2>
    <p>Total Balance: 1000</p>
    <p>Unconfirmed Balance: 0</p>
    <p>In Contracts: 1000</p>
    """
  end

  def coin_list(assigns) do
    ~H"""
    <h2>Coins</h2>
    <ul>
      <li><.coin outpoint={ex_outpoint()} amount="100"/></li>
      <li><.coin outpoint={ex_outpoint()} amount="200"/></li>
      <li><.coin outpoint={ex_outpoint()} amount="300"/></li>
      <li><.coin outpoint={ex_outpoint()} amount="400"/></li>
    </ul>
    """
  end

  def coin(assigns) do
    ~H"""
    <div class="inline-flex space-x-4">
      <p><%= @amount %> sats</p>    <p><%= @outpoint %></p>
    </div>
    """
  end

  def ex_outpoint() do
    "deadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeef:0"
  end

  def wallet_receive(assigns) do
    ~H"""
    <div>
    <p>receive</p>
    <%# TODO make this a PHX action %>
    <.form for={%{}} action={~p"/wallet/address"} method="post">
      <.input type="text" name="label" placeholder="label" value="" />
      <.button type="submit">New Address</.button>
    </.form>
    </div>
    """
  end

  def wallet_send(assigns) do
    ~H"""
    <p>send</p>
    <div>
      <.form for={%{}} action={~p"/wallet/send"} method="post">
        <.input type="text" name="address" placeholder="address" value="" required />
        <%!-- <.error :for=><%= msg %></.error> --%>
        <.input type="text" name="amount" placeholder="sats" value="" required />
        <%!-- <.error :for={msg <- @errors}><%= msg %></.error> --%>
        <.input type="text" name="fee" placeholder="0 sats / vByte" value="" required />
        <%!-- <.error :for={msg <- @errors}><%= msg %></.error> --%>
        <.button type="submit">Send</.button>
      </.form>
    </div>

    """
  end
end
