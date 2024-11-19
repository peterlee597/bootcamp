require "test_helper"

class CategoryTwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_two = category_twos(:one)
  end

  test "should get index" do
    get category_twos_url
    assert_response :success
  end

  test "should get new" do
    get new_category_two_url
    assert_response :success
  end

  test "should create category_two" do
    assert_difference("CategoryTwo.count") do
      post category_twos_url, params: { category_two: { category: @category_two.category } }
    end

    assert_redirected_to category_two_url(CategoryTwo.last)
  end

  test "should show category_two" do
    get category_two_url(@category_two)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_two_url(@category_two)
    assert_response :success
  end

  test "should update category_two" do
    patch category_two_url(@category_two), params: { category_two: { category: @category_two.category } }
    assert_redirected_to category_two_url(@category_two)
  end

  test "should destroy category_two" do
    assert_difference("CategoryTwo.count", -1) do
      delete category_two_url(@category_two)
    end

    assert_redirected_to category_twos_url
  end
end
