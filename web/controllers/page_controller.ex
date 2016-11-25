defmodule ApausAdmin.PageController do
  use ApausAdmin.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
