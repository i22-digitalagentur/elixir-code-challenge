defmodule ShopliftersElixirs.Commodities.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :name, :string
    field :color, :string
    field :ean, :string
    field :price, :decimal
    field :old_price, :decimal

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:ean, :name, :price, :old_price, :color])
    |> validate_required([:ean, :name, :price, :old_price, :color])
    |> unique_constraint(:name)
    |> unique_constraint(:ean)
  end
end
