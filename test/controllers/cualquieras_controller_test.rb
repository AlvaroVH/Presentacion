require 'test_helper'

class CualquierasControllerTest < ActionController::TestCase
  setup do
    @cualquiera = cualquieras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cualquieras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cualquiera" do
    assert_difference('Cualquiera.count') do
      post :create, cualquiera: { columna1: @cualquiera.columna1 }
    end

    assert_redirected_to cualquiera_path(assigns(:cualquiera))
  end

  test "should show cualquiera" do
    get :show, id: @cualquiera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cualquiera
    assert_response :success
  end

  test "should update cualquiera" do
    patch :update, id: @cualquiera, cualquiera: { columna1: @cualquiera.columna1 }
    assert_redirected_to cualquiera_path(assigns(:cualquiera))
  end

  test "should destroy cualquiera" do
    assert_difference('Cualquiera.count', -1) do
      delete :destroy, id: @cualquiera
    end

    assert_redirected_to cualquieras_path
  end
end
