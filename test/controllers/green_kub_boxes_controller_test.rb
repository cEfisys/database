require 'test_helper'

class GreenKubBoxesControllerTest < ActionController::TestCase
  setup do
    @green_kub_box = green_kub_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:green_kub_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create green_kub_box" do
    assert_difference('GreenKubBox.count') do
      post :create, green_kub_box: {  }
    end

    assert_redirected_to green_kub_box_path(assigns(:green_kub_box))
  end

  test "should show green_kub_box" do
    get :show, id: @green_kub_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @green_kub_box
    assert_response :success
  end

  test "should update green_kub_box" do
    patch :update, id: @green_kub_box, green_kub_box: {  }
    assert_redirected_to green_kub_box_path(assigns(:green_kub_box))
  end

  test "should destroy green_kub_box" do
    assert_difference('GreenKubBox.count', -1) do
      delete :destroy, id: @green_kub_box
    end

    assert_redirected_to green_kub_boxes_path
  end
end
