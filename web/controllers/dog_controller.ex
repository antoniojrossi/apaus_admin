defmodule ApausAdmin.DogController do
  use ApausAdmin.Web, :controller

  def new_registration(conn, _params) do
    render conn, "register.html"
  end

  def register(conn, params) do
    attrs = %{name: params["name"]}
    {:ok, dog} = ApausAdmin.Dogs.Register.call(attrs)
    conn
    |> put_flash(:success, "¡#{dog.name} se ha registrado correctamente!")
    |> render("register.html")
  end
end
