defmodule ApausAdmin.DogController.RegisterTest do
  use ApausAdmin.ConnCase
  
  test "Dog registration form is displayed", %{conn: conn} do
    conn = get conn, "/dogs/register"
    assert html_response(conn, 200) =~ ~r/<form.*id=\"register-dog\">/
    assert html_response(conn, 200) =~ ~r/<input.*name=\"name\"/
  end
end