require 'test_helper'

class ActuatorsControllerTest < ActionController::TestCase
  setup do
    # @actuator_type = actuator_types(:actuator_type_one)
    # @greenkub_box = green_kub_boxes(:green_kub_box_one)
    @actuator = actuators(:actuators_one)
  end


  # called after every single test
  def teardown
    # as we are re-initializing @actuator before every test
    # setting it to nil here is not essential but I hope
    # you understand how you can use the teardown method
    @actuator = nil
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
# test "should create an actuator_type" do
#   assert_difference('ActuatorType.count') do
#       post :create, actuator_type: { caracteristics: @actuator_type.caracteristics, name: @actuator_type.name }
#     end

#     assert_redirected_to actuator_type_path(assigns(:actuator_type))

# end

# test "should create an greenkub_box" do
#   assert_difference('GreenKubBox.count') do
#     post :create, green_kub_box: { Serial_Number: @greenkub_box.Serial_Number, model_id: @greenkub_box.model_id, user_id:@greenkub_box.user_id}
#   end
# end  

  test "should create actuator" do
    
    
    assert_difference('Actuator.count') do
      post :create, actuator: { ref: @actuator.ref, state: @actuator.state, actuator_type_id: @actuator.actuator_type_id, green_kub_box_id: @actuator.green_kub_box_id }
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
    patch :update, id: @actuator, actuator: { ref: @actuator.ref, state: @actuator.state ,actuator_type_id: @actuator.actuator_type_id, greenkub_box_id: @actuator.green_kub_box_id, }
    assert_redirected_to actuator_path(assigns(:actuator))
  end

  test "should destroy actuator" do
    assert_difference('Actuator.count', -1) do
      delete :destroy, id: @actuator
    end

    assert_redirected_to actuators_path
  end
end
