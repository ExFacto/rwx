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
    <p><%= @amount %> sats</p><p><%= @outpoint %></p>
    """
  end

  def ex_outpoint() do
    "deadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeef:0"
  end

  def wallet_receive(assigns) do
    ~H"""
    <p>receive</p>
    """
  end

  def wallet_send(assigns) do
    ~H"""
    <p>send</p>
    """
  end
end
