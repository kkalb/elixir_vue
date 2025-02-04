defmodule ElixirVueWeb.Router do
  use ElixirVueWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_live_flash)
    plug(:put_root_layout, html: {ElixirVueWeb.Layouts, :root})
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", ElixirVueWeb do
    pipe_through(:browser)
    live("/", Live.Home)
  end
end
