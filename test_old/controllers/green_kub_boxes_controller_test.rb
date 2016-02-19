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

end
