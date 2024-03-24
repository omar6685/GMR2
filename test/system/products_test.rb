require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Description", with: @product.description
    fill_in "Description ar", with: @product.description_ar
    fill_in "Image description", with: @product.image_description
    fill_in "Image description ar", with: @product.image_description_ar
    fill_in "Image title", with: @product.image_title
    fill_in "Image title ar", with: @product.image_title_ar
    fill_in "Title", with: @product.title
    fill_in "Title ar", with: @product.title_ar
    fill_in "User", with: @product.user_id
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Description", with: @product.description
    fill_in "Description ar", with: @product.description_ar
    fill_in "Image description", with: @product.image_description
    fill_in "Image description ar", with: @product.image_description_ar
    fill_in "Image title", with: @product.image_title
    fill_in "Image title ar", with: @product.image_title_ar
    fill_in "Title", with: @product.title
    fill_in "Title ar", with: @product.title_ar
    fill_in "User", with: @product.user_id
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
