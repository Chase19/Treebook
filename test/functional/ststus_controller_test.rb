require 'test_helper'

class StstusControllerTest < ActionController::TestCase
  setup do
    @ststu = ststus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ststus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ststu" do
    assert_difference('Ststu.count') do
      post :create, ststu: { content: @ststu.content, name: @ststu.name }
    end

    assert_redirected_to ststu_path(assigns(:ststu))
  end

  test "should show ststu" do
    get :show, id: @ststu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ststu
    assert_response :success
  end

  test "should update ststu" do
    put :update, id: @ststu, ststu: { content: @ststu.content, name: @ststu.name }
    assert_redirected_to ststu_path(assigns(:ststu))
  end

  test "should destroy ststu" do
    assert_difference('Ststu.count', -1) do
      delete :destroy, id: @ststu
    end

    assert_redirected_to ststus_path
  end
end
