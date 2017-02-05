defmodule ApausAdmin.Dogs.Register do
  alias ApausAdmin.Dog
  alias ApausAdmin.Repo

  @create_params [:name]

  def call(%{name: name}) do
    name
    |> build_changeset
    |> create_dog
  end

  defp build_changeset(name) do
    params = %{name: name}

    %Dog{}
    |> Ecto.Changeset.cast(params, @create_params)
  end

  defp create_dog(changeset) do
    changeset
    |> Repo.insert
  end
end