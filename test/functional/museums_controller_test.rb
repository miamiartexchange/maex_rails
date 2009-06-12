require 'test_helper'

class MuseumsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:museums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create museum" do
    assert_difference('Museum.count') do
      post :create, :museum => { }
    end

    assert_redirected_to museum_path(assigns(:museum))
  end

  test "should show museum" do
    get :show, :id => museums(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => museums(:one).to_param
    assert_response :success
  end

  test "should update museum" do
    put :update, :id => museums(:one).to_param, :museum => { }
    assert_redirected_to museum_path(assigns(:museum))
  end

  test "should destroy museum" do
    assert_difference('Museum.count', -1) do
      delete :destroy, :id => museums(:one).to_param
    end

    assert_redirected_to museums_path
  end
end
