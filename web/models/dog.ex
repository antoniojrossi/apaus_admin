defmodule ApausAdmin.Dog do
  use ApausAdmin.Web, :model

  schema "dogs" do
    field :name, :string
    timestamps()
  end
end