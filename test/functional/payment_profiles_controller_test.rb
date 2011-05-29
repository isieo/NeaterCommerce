require 'test_helper'

class PaymentProfilesControllerTest < ActionController::TestCase
  setup do
    @payment_profile = payment_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_profile" do
    assert_difference('PaymentProfile.count') do
      post :create, :payment_profile => @payment_profile.attributes
    end

    assert_redirected_to payment_profile_path(assigns(:payment_profile))
  end

  test "should show payment_profile" do
    get :show, :id => @payment_profile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @payment_profile.to_param
    assert_response :success
  end

  test "should update payment_profile" do
    put :update, :id => @payment_profile.to_param, :payment_profile => @payment_profile.attributes
    assert_redirected_to payment_profile_path(assigns(:payment_profile))
  end

  test "should destroy payment_profile" do
    assert_difference('PaymentProfile.count', -1) do
      delete :destroy, :id => @payment_profile.to_param
    end

    assert_redirected_to payment_profiles_path
  end
end
