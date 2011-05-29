require 'test_helper'

class ItemsProductsControllerTest < ActionController::TestCase
  setup do
    @items_product = items_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create items_product" do
    assert_difference('ItemsProduct.count') do
      post :create, :items_product => @items_product.attributes
    end

    assert_redirected_to items_product_path(assigns(:items_product))
  end

  test "should show items_product" do
    get :show, :id => @items_product.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @items_product.to_param
    assert_response :success
  end

  test "should update items_product" do
    put :update, :id => @items_product.to_param, :items_product => @items_product.attributes
    assert_redirected_to items_product_path(assigns(:items_product))
  end

  test "should destroy items_product" do
    assert_difference('ItemsProduct.count', -1) do
      delete :destroy, :id => @items_product.to_param
    end

    assert_redirected_to items_products_path
  end
end
