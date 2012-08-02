require 'test_helper'

class PropertyCodesControllerTest < ActionController::TestCase
  setup do
    @property_code = property_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_code" do
    assert_difference('PropertyCode.count') do
      post :create, property_code: { property_code: @property_code.property_code }
    end

    assert_redirected_to property_code_path(assigns(:property_code))
  end

  test "should show property_code" do
    get :show, id: @property_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_code
    assert_response :success
  end

  test "should update property_code" do
    put :update, id: @property_code, property_code: { property_code: @property_code.property_code }
    assert_redirected_to property_code_path(assigns(:property_code))
  end

  test "should destroy property_code" do
    assert_difference('PropertyCode.count', -1) do
      delete :destroy, id: @property_code
    end

    assert_redirected_to property_codes_path
  end
end
