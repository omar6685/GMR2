require "application_system_test_case"

class InformationTest < ApplicationSystemTestCase
  setup do
    @information = information(:one)
  end

  test "visiting the index" do
    visit information_url
    assert_selector "h1", text: "Information"
  end

  test "should create information" do
    visit information_url
    click_on "New information"

    fill_in "Description", with: @information.description
    fill_in "Description ar", with: @information.description_ar
    fill_in "Name", with: @information.name
    fill_in "Name ar", with: @information.name_ar
    fill_in "Title", with: @information.title
    fill_in "Title ar", with: @information.title_ar
    fill_in "User", with: @information.user_id
    click_on "Create Information"

    assert_text "Information was successfully created"
    click_on "Back"
  end

  test "should update Information" do
    visit information_url(@information)
    click_on "Edit this information", match: :first

    fill_in "Description", with: @information.description
    fill_in "Description ar", with: @information.description_ar
    fill_in "Name", with: @information.name
    fill_in "Name ar", with: @information.name_ar
    fill_in "Title", with: @information.title
    fill_in "Title ar", with: @information.title_ar
    fill_in "User", with: @information.user_id
    click_on "Update Information"

    assert_text "Information was successfully updated"
    click_on "Back"
  end

  test "should destroy Information" do
    visit information_url(@information)
    click_on "Destroy this information", match: :first

    assert_text "Information was successfully destroyed"
  end
end
