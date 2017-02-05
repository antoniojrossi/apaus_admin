defmodule ApausAdmin.Dogs.RegisterTest do
  use ApausAdmin.ModelCase

  alias ApausAdmin.Dogs.Register
  alias ApausAdmin.Dog

  test "it creates a dog" do
    {:ok, dog} = Register.call(%{name: "Donna"})

    assert dog.id > 0
    assert dog.name == "Donna"

    assert (from dog in Dog, select: count(dog.id)) |> Repo.one == 1
  end
end