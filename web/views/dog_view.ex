defmodule ApausAdmin.DogView do
  use ApausAdmin.Web, :view

  def csrf_token(_conn) do
    Plug.CSRFProtection.get_csrf_token()
  end
end
