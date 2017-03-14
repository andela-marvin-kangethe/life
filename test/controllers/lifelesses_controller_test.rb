require 'test_helper'

class LifelessesControllerTest < ActionController::TestCase
  setup do
    @lifeless = lifelesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lifelesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lifeless" do
    assert_difference('Lifeless.count') do
      post :create, lifeless: {  }
    end

    assert_redirected_to lifeless_path(assigns(:lifeless))
  end

  test "should show lifeless" do
    get :show, id: @lifeless
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lifeless
    assert_response :success
  end

  test "should update lifeless" do
    patch :update, id: @lifeless, lifeless: {  }
    assert_redirected_to lifeless_path(assigns(:lifeless))
  end

  test "should destroy lifeless" do
    assert_difference('Lifeless.count', -1) do
      delete :destroy, id: @lifeless
    end

    assert_redirected_to lifelesses_path
  end
end
