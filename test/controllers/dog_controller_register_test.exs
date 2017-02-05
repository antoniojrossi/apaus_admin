defmodule ApausAdmin.DogController.RegisterTest do
  use ApausAdmin.ConnCase
  
  test "Dog registration form is displayed", %{conn: conn} do
    conn = get conn, "/dogs/register"
    assert html_response(conn, 200) =~ ~r/form.*id=\"register-dog\"/
    assert html_response(conn, 200) =~ ~r/input.*name=\"name\"/
  end

  test "Successful dog registration shows info message" do
    conn = build_conn()
    |> post("/dogs/register", name: "Donna")

    assert html_response(conn, 200) =~ ~r/ui success message/
    assert html_response(conn, 200) =~ ~r/Donna/
  end
end