require 'test_helper'

class BatonsControllerTest < ActionController::TestCase
  setup do
    @baton = batons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baton" do
    assert_difference('Baton.count') do
      post :create, baton: @baton.attributes
    end

    assert_redirected_to baton_path(assigns(:baton))
  end

  test "should show baton" do
    get :show, id: @baton
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baton
    assert_response :success
  end

  test "should update baton" do
    put :update, id: @baton, baton: @baton.attributes
    assert_redirected_to baton_path(assigns(:baton))
  end

  test "should destroy baton" do
    assert_difference('Baton.count', -1) do
      delete :destroy, id: @baton
    end

    assert_redirected_to batons_path
  end
end
