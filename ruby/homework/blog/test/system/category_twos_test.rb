require "application_system_test_case"

class CategoryTwosTest < ApplicationSystemTestCase
  setup do
    @category_two = category_twos(:one)
  end

  test "visiting the index" do
    visit category_twos_url
    assert_selector "h1", text: "Category twos"
  end

  test "should create category two" do
    visit category_twos_url
    click_on "New category two"

    fill_in "Category", with: @category_two.category
    click_on "Create Category two"

    assert_text "Category two was successfully created"
    click_on "Back"
  end

  test "should update Category two" do
    visit category_two_url(@category_two)
    click_on "Edit this category two", match: :first

    fill_in "Category", with: @category_two.category
    click_on "Update Category two"

    assert_text "Category two was successfully updated"
    click_on "Back"
  end

  test "should destroy Category two" do
    visit category_two_url(@category_two)
    click_on "Destroy this category two", match: :first

    assert_text "Category two was successfully destroyed"
  end
end
