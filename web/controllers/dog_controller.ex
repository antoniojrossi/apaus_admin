defmodule ApausAdmin.DogController do
  use ApausAdmin.Web, :controller

  def register(conn, _params) do
    render conn, "register.html"
  end
end
