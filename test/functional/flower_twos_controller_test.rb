require 'test_helper'

class FlowerTwosControllerTest < ActionController::TestCase
  setup do
    @flower_two = flower_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flower_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flower_two" do
    assert_difference('FlowerTwo.count') do
      post :create, :flower_two => @flower_two.attributes
    end

    assert_redirected_to flower_two_path(assigns(:flower_two))
  end

  test "should show flower_two" do
    get :show, :id => @flower_two.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @flower_two.to_param
    assert_response :success
  end

  test "should update flower_two" do
    put :update, :id => @flower_two.to_param, :flower_two => @flower_two.attributes
    assert_redirected_to flower_two_path(assigns(:flower_two))
  end

  test "should destroy flower_two" do
    assert_difference('FlowerTwo.count', -1) do
      delete :destroy, :id => @flower_two.to_param
    end

    assert_redirected_to flower_twos_path
  end
end
