require 'rails_helper'
RSpec.describe ActuatorTypesController, :type => :controller do
  
describe 'GET #show' do
    it 'assigns the requested actuator_type to @actuator_type' do
        actuator_type = create(:actuator_type)
        get :show, id: actuator_type
        expect(assigns(:actuator_type)).to eq actuator_type
    end
    it 'renders the :show template' do
      actuator_type = create(:actuator_type)
      get :show, id: actuator_type
      expect(response).to render_template :show
    end
  end
describe 'GET #new' do
  it 'assigns a new actuator_type to @actuator_type' do
    get :new
    expect(assigns(:actuator_type)).to be_a_new (ActuatorType)
  end
  it 'renders the :new template' do
    get :new
    expect(response).to render_template :new
  end
end
describe 'GET #edit' do
  it 'assigns the request actuator_type to @actuator_type' do
    actuator_type = create(:actuator_type)
    get :edit, id: actuator_type
    expect(assigns(:actuator_type)).to eq actuator_type
  end
  it 'renders the :edit template' do
    actuator_type = create(:actuator_type)
    get :edit, id: actuator_type
    expect(response).to render_template :edit
  end
end

describe 'GET #index' do
  context 'with params[:letter]'do
    it 'populates and array of actuator_types starting with the letter'
    it 'renders the :index view'
  end

  context 'with params[:letter]'do
    it 'populates an array of all actuator_types'
    it 'renders the :index view'

  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves the new actuator_type in the database'

      it 'redirects to actuator_type#show'
    end

    context 'with invalid attributes' do
      it ' does not save the new actuator_type in the database'
      it 're-renders the :new template'
    end

  end

  describe 'PUT #update' do
    context 'with valid attributes' do
      it 'updates the actuator_type in the database'
      it 'redirects to the actuator_type'
    end

    context 'with invalid attributes' do
      it 'does not update the actuator_type'
      it 're-renders the #edit template'
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes actuator_type from the database'
    it 'redirects to users#index'
  end

end
  # it "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:actuator_types)
  # end

  # it "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # it "should create actuator_type" do
  #   assert_difference('ActuatorType.count') do
  #     post :create, actuator_type: { caracteristics: @actuator_type.caracteristics, name: @actuator_type.name }
  #   end

  #   assert_redirected_to actuator_type_path(assigns(:actuator_type))
  # end

  # it "should show actuator_type" do
  #   get :show, id: @actuator_type
  #   assert_response :success
  # end

  # it "should get edit" do
  #   get :edit, id: @actuator_type
  #   assert_response :success
  # end

  # it "should update actuator_type" do
  #   patch :update, id: @actuator_type, actuator_type: { caracteristics: @actuator_type.caracteristics, name: @actuator_type.name }
  #   assert_redirected_to actuator_type_path(assigns(:actuator_type))
  # end

  # it "should destroy actuator_type" do
  #   assert_difference('ActuatorType.count', -1) do
  #     delete :destroy, id: @actuator_type
  #   end

  #   assert_redirected_to actuator_types_path
  # end
end
