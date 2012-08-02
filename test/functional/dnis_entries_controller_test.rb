require 'test_helper'

class DnisEntriesControllerTest < ActionController::TestCase
  setup do
    @dnis_entry = dnis_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dnis_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dnis_entry" do
    assert_difference('DnisEntry.count') do
      post :create, dnis_entry: { dnis_entry: @dnis_entry.dnis_entry, password: @dnis_entry.password, property_code_id: @dnis_entry.property_code_id, username: @dnis_entry.username }
    end

    assert_redirected_to dnis_entry_path(assigns(:dnis_entry))
  end

  test "should show dnis_entry" do
    get :show, id: @dnis_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dnis_entry
    assert_response :success
  end

  test "should update dnis_entry" do
    put :update, id: @dnis_entry, dnis_entry: { dnis_entry: @dnis_entry.dnis_entry, password: @dnis_entry.password, property_code_id: @dnis_entry.property_code_id, username: @dnis_entry.username }
    assert_redirected_to dnis_entry_path(assigns(:dnis_entry))
  end

  test "should destroy dnis_entry" do
    assert_difference('DnisEntry.count', -1) do
      delete :destroy, id: @dnis_entry
    end

    assert_redirected_to dnis_entries_path
  end
end
