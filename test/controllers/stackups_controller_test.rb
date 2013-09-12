require 'test_helper'

class StackupsControllerTest < ActionController::TestCase
  setup do
    @stackup = stackups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stackups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stackup" do
    assert_difference('Stackup.count') do
      post :create, stackup: {  }
    end

    assert_redirected_to stackup_path(assigns(:stackup))
  end

  test "should show stackup" do
    get :show, id: @stackup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stackup
    assert_response :success
  end

  test "should update stackup" do
    patch :update, id: @stackup, stackup: {  }
    assert_redirected_to stackup_path(assigns(:stackup))
  end

  test "should destroy stackup" do
    assert_difference('Stackup.count', -1) do
      delete :destroy, id: @stackup
    end

    assert_redirected_to stackups_path
  end
end
