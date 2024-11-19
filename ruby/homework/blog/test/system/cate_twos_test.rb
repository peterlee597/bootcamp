require "application_system_test_case"

class CateTwosTest < ApplicationSystemTestCase
  setup do
    @cate_two = cate_twos(:one)
  end

  test "visiting the index" do
    visit cate_twos_url
    assert_selector "h1", text: "Cate twos"
  end

  test "should create cate two" do
    visit cate_twos_url
    click_on "New cate two"

    fill_in "Category", with: @cate_two.category
    click_on "Create Cate two"

    assert_text "Cate two was successfully created"
    click_on "Back"
  end

  test "should update Cate two" do
    visit cate_two_url(@cate_two)
    click_on "Edit this cate two", match: :first

    fill_in "Category", with: @cate_two.category
    click_on "Update Cate two"

    assert_text "Cate two was successfully updated"
    click_on "Back"
  end

  test "should destroy Cate two" do
    visit cate_two_url(@cate_two)
    click_on "Destroy this cate two", match: :first

    assert_text "Cate two was successfully destroyed"
  end
end
