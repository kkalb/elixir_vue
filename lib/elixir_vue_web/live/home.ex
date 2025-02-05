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
      <.header class="h-[10%]" text="Elixir Vue 3"></.header>
      <div class="flex w-3/4">
        <div class="w-full h-full" phx-update="ignore" id="app_vue"></div>
      </div>
      <.footer />
    </div>
    """
  end
end
