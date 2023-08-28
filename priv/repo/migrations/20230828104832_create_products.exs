defmodule ShopliftersElixirs.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :ean, :string
      add :name, :string
      add :price, :decimal
      add :old_price, :decimal
      add :color, :string

      timestamps()
    end

    create unique_index(:products, [:name])
    create unique_index(:products, [:ean])
  end
end
