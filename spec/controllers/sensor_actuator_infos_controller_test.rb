require 'test_helper'

class SensorActuatorInfosControllerTest < ActionController::TestCase
  setup do
    @sensor_actuator_info = sensor_actuator_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensor_actuator_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensor_actuator_info" do
    assert_difference('SensorActuatorInfo.count') do
      post :create, sensor_actuator_info: { date: @sensor_actuator_info.date, sensor_id: @sensor_actuator_info.sensor_id, value: @sensor_actuator_info.value }
    end

    assert_redirected_to sensor_actuator_info_path(assigns(:sensor_actuator_info))
  end

  test "should show sensor_actuator_info" do
    get :show, id: @sensor_actuator_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensor_actuator_info
    assert_response :success
  end

  test "should update sensor_actuator_info" do
    patch :update, id: @sensor_actuator_info, sensor_actuator_info: { date: @sensor_actuator_info.date, sensor_id: @sensor_actuator_info.sensor_id, value: @sensor_actuator_info.value }
    assert_redirected_to sensor_actuator_info_path(assigns(:sensor_actuator_info))
  end

  test "should destroy sensor_actuator_info" do
    assert_difference('SensorActuatorInfo.count', -1) do
      delete :destroy, id: @sensor_actuator_info
    end

    assert_redirected_to sensor_actuator_infos_path
  end
end
