require 'test_helper'

class LeafsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leaf = leafs(:one)
  end

  test "should get index" do
    get leafs_url
    assert_response :success
  end

  test "should get new" do
    get new_leaf_url
    assert_response :success
  end

  test "should create leaf" do
    assert_difference('Leaf.count') do
      post leafs_url, params: { leaf: { body: @leaf.body, img_url: @leaf.img_url, title: @leaf.title, user_id: @leaf.user_id } }
    end

    assert_redirected_to leaf_url(Leaf.last)
  end

  test "should show leaf" do
    get leaf_url(@leaf)
    assert_response :success
  end

  test "should get edit" do
    get edit_leaf_url(@leaf)
    assert_response :success
  end

  test "should update leaf" do
    patch leaf_url(@leaf), params: { leaf: { body: @leaf.body, img_url: @leaf.img_url, title: @leaf.title, user_id: @leaf.user_id } }
    assert_redirected_to leaf_url(@leaf)
  end

  test "should destroy leaf" do
    assert_difference('Leaf.count', -1) do
      delete leaf_url(@leaf)
    end

    assert_redirected_to leafs_url
  end
end
