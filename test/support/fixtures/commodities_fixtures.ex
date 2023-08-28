defmodule ShopliftersElixirs.CommoditiesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ShopliftersElixirs.Commodities` context.
  """

  @doc """
  Generate a unique product name.
  """
  def unique_product_name, do: "some name#{System.unique_integer([:positive])}"

  @doc """
  Generate a unique product ean.
  """
  def unique_product_ean, do: "some ean#{System.unique_integer([:positive])}"

  @doc """
  Generate a product.
  """
  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        name: unique_product_name(),
        color: "some color",
        ean: unique_product_ean(),
        price: "120.5",
        old_price: "120.5"
      })
      |> ShopliftersElixirs.Commodities.create_product()

    product
  end
end
