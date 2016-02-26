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
it 'renders the :index view' do
      get :index
      expect(response).to render_template :index
    end
end

describe 'DELETE #destroy' do
    before :each do
      @actuator_type = create(:actuator_type)
    end
    it 'deletes actuator_type from the database' do
        expect{ delete :destroy, id: @actuator_type }.to change(ActuatorType,:count).by(-1)
    end    
    it 'redirects to users#index' do
      delete :destroy, id: @actuator_type
      expect(response).to redirect_to actuator_types_url
    end
  end
end
#TODO create a feature to search by a letter to produce  a fastest answer
=begin 
  context 'with params[:letter]' do
    it 'populates and array of actuator_types starting with the letter' do
        temp = create(:actuator_type, name: 'Temp') # actuator_type is the factory name, see factories/actuator_types.rb
        ph = create(:actuator_type, name: 'PH')
        get :index, letter: 'T'
        expect(assigns(:actuator_types)).to match_array([temp])
    end
    it 'renders the :index view'
  end
  context 'with params[:letter]'do
    it 'populates an array of all actuator_types'
    it 'renders the :index view'

  end

context 'without params[:letter]'do
    it 'populates an array of all actuator_types' do
        temp = create(:actuator_type, name: 'Temp') # actuator_type is the factory name, see factories/actuator_types.rb
        ph = create(:actuator_type, name: 'PH')
        get :index
        expect(assigns(:actuator_types)).to match_array([temp, ph])
    end
=end
=begin
# TODO - post request for the api
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
=end