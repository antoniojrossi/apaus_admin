defmodule ApausAdmin.Repo.Migrations.AddDogsTable do
  use Ecto.Migration

  def change do
    create table(:dogs) do
      add :name, :string
      timestamps
    end
  end
end
