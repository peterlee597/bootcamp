require "application_system_test_case"

class CategoryDescriptionsTest < ApplicationSystemTestCase
  setup do
    @category_description = category_descriptions(:one)
  end

  test "visiting the index" do
    visit category_descriptions_url
    assert_selector "h1", text: "Category descriptions"
  end

  test "should create category description" do
    visit category_descriptions_url
    click_on "New category description"

    fill_in "Category", with: @category_description.category
    click_on "Create Category description"

    assert_text "Category description was successfully created"
    click_on "Back"
  end

  test "should update Category description" do
    visit category_description_url(@category_description)
    click_on "Edit this category description", match: :first

    fill_in "Category", with: @category_description.category
    click_on "Update Category description"

    assert_text "Category description was successfully updated"
    click_on "Back"
  end

  test "should destroy Category description" do
    visit category_description_url(@category_description)
    click_on "Destroy this category description", match: :first

    assert_text "Category description was successfully destroyed"
  end
end
