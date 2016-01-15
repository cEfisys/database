require 'test_helper'

class ActuatorsControllerTest < ActionController::TestCase
  setup do
    @actuator = actuators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actuators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actuator" do
    assert_difference('Actuator.count') do
      post :create, actuator: { actuators_type_id: @actuator.actuator_type_id, greenkub_box_id: @actuator.green_kub_box_id, ref: @actuator.ref, state: @actuator.state }
    end

    assert_redirected_to actuator_path(assigns(:actuator))
  end

  test "should show actuator" do
    get :show, id: @actuator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actuator
    assert_response :success
  end

  test "should update actuator" do
    patch :update, id: @actuator, actuator: { actuators_type_id: @actuator.actuator_type_id, greenkub_box_id: @actuator.green_kub_box_id, ref: @actuator.ref, state: @actuator.state }
    assert_redirected_to actuator_path(assigns(:actuator))
  end

  test "should destroy actuator" do
    assert_difference('Actuator.count', -1) do
      delete :destroy, id: @actuator
    end

    assert_redirected_to actuators_path
  end
end
