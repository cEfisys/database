require 'test_helper'

class ActuatorTypesControllerTest < ActionController::TestCase
  setup do
    @actuator_type = actuator_types(:actuator_type_one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actuator_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actuator_type" do
    assert_difference('ActuatorType.count') do
      post :create, actuator_type: { caracteristics: @actuator_type.caracteristics, name: @actuator_type.name }
    end

    assert_redirected_to actuator_type_path(assigns(:actuator_type))
  end

  test "should show actuator_type" do
    get :show, id: @actuator_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actuator_type
    assert_response :success
  end

  test "should update actuator_type" do
    patch :update, id: @actuator_type, actuator_type: { caracteristics: @actuator_type.caracteristics, name: @actuator_type.name }
    assert_redirected_to actuator_type_path(assigns(:actuator_type))
  end

  test "should destroy actuator_type" do
    assert_difference('ActuatorType.count', -1) do
      delete :destroy, id: @actuator_type
    end

    assert_redirected_to actuator_types_path
  end
end
