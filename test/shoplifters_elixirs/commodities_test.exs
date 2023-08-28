defmodule ShopliftersElixirs.CommoditiesTest do
  use ShopliftersElixirs.DataCase

  alias ShopliftersElixirs.Commodities

  describe "products" do
    alias ShopliftersElixirs.Commodities.Product

    import ShopliftersElixirs.CommoditiesFixtures

    @invalid_attrs %{name: nil, color: nil, ean: nil, price: nil, old_price: nil}

    test "list_products/0 returns all products" do
      product = product_fixture()
      assert Commodities.list_products() == [product]
    end

    test "get_product!/1 returns the product with given id" do
      product = product_fixture()
      assert Commodities.get_product!(product.id) == product
    end

    test "create_product/1 with valid data creates a product" do
      valid_attrs = %{name: "some name", color: "some color", ean: "some ean", price: "120.5", old_price: "120.5"}

      assert {:ok, %Product{} = product} = Commodities.create_product(valid_attrs)
      assert product.name == "some name"
      assert product.color == "some color"
      assert product.ean == "some ean"
      assert product.price == Decimal.new("120.5")
      assert product.old_price == Decimal.new("120.5")
    end

    test "create_product/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Commodities.create_product(@invalid_attrs)
    end

    test "update_product/2 with valid data updates the product" do
      product = product_fixture()
      update_attrs = %{name: "some updated name", color: "some updated color", ean: "some updated ean", price: "456.7", old_price: "456.7"}

      assert {:ok, %Product{} = product} = Commodities.update_product(product, update_attrs)
      assert product.name == "some updated name"
      assert product.color == "some updated color"
      assert product.ean == "some updated ean"
      assert product.price == Decimal.new("456.7")
      assert product.old_price == Decimal.new("456.7")
    end

    test "update_product/2 with invalid data returns error changeset" do
      product = product_fixture()
      assert {:error, %Ecto.Changeset{}} = Commodities.update_product(product, @invalid_attrs)
      assert product == Commodities.get_product!(product.id)
    end

    test "delete_product/1 deletes the product" do
      product = product_fixture()
      assert {:ok, %Product{}} = Commodities.delete_product(product)
      assert_raise Ecto.NoResultsError, fn -> Commodities.get_product!(product.id) end
    end

    test "change_product/1 returns a product changeset" do
      product = product_fixture()
      assert %Ecto.Changeset{} = Commodities.change_product(product)
    end
  end
end
