require "test_helper"

class CategoryDescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_description = category_descriptions(:one)
  end

  test "should get index" do
    get category_descriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_category_description_url
    assert_response :success
  end

  test "should create category_description" do
    assert_difference("CategoryDescription.count") do
      post category_descriptions_url, params: { category_description: { category: @category_description.category } }
    end

    assert_redirected_to category_description_url(CategoryDescription.last)
  end

  test "should show category_description" do
    get category_description_url(@category_description)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_description_url(@category_description)
    assert_response :success
  end

  test "should update category_description" do
    patch category_description_url(@category_description), params: { category_description: { category: @category_description.category } }
    assert_redirected_to category_description_url(@category_description)
  end

  test "should destroy category_description" do
    assert_difference("CategoryDescription.count", -1) do
      delete category_description_url(@category_description)
    end

    assert_redirected_to category_descriptions_url
  end
end
