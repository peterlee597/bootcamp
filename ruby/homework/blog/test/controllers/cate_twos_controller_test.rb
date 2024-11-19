require "test_helper"

class CateTwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cate_two = cate_twos(:one)
  end

  test "should get index" do
    get cate_twos_url
    assert_response :success
  end

  test "should get new" do
    get new_cate_two_url
    assert_response :success
  end

  test "should create cate_two" do
    assert_difference("CateTwo.count") do
      post cate_twos_url, params: { cate_two: { category: @cate_two.category } }
    end

    assert_redirected_to cate_two_url(CateTwo.last)
  end

  test "should show cate_two" do
    get cate_two_url(@cate_two)
    assert_response :success
  end

  test "should get edit" do
    get edit_cate_two_url(@cate_two)
    assert_response :success
  end

  test "should update cate_two" do
    patch cate_two_url(@cate_two), params: { cate_two: { category: @cate_two.category } }
    assert_redirected_to cate_two_url(@cate_two)
  end

  test "should destroy cate_two" do
    assert_difference("CateTwo.count", -1) do
      delete cate_two_url(@cate_two)
    end

    assert_redirected_to cate_twos_url
  end
end
