defmodule ElixirVueWeb.Live.Home do
  @moduledoc """
  Landing page of the webside.
  """
  use ElixirVueWeb, :live_view

  require Logger

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl Phoenix.LiveView
  def render(assigns) do
    ~H"""
    <div class="h-full w-full">
      <.header text="Elixir Vue"></.header>
      <.footer />
    </div>
    """
  end
end
