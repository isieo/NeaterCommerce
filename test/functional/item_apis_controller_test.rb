require 'test_helper'

class ItemApisControllerTest < ActionController::TestCase
  setup do
    @item_api = item_apis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_apis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_api" do
    assert_difference('ItemApi.count') do
      post :create, :item_api => @item_api.attributes
    end

    assert_redirected_to item_api_path(assigns(:item_api))
  end

  test "should show item_api" do
    get :show, :id => @item_api.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @item_api.to_param
    assert_response :success
  end

  test "should update item_api" do
    put :update, :id => @item_api.to_param, :item_api => @item_api.attributes
    assert_redirected_to item_api_path(assigns(:item_api))
  end

  test "should destroy item_api" do
    assert_difference('ItemApi.count', -1) do
      delete :destroy, :id => @item_api.to_param
    end

    assert_redirected_to item_apis_path
  end
end
