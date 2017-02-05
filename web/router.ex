defmodule ApausAdmin.Router do
  use ApausAdmin.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ApausAdmin do
    pipe_through :browser # Use the default browser stack

    get "/dogs/register", DogController, :new_registration
    post "/dogs/register", DogController, :register
  end

  # Other scopes may use custom stacks.
  # scope "/api", ApausAdmin do
  #   pipe_through :api
  # end
end
