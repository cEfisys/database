require 'rails_helper'
RSpec.describe ActuatorsController, :type => :controller do
  
describe 'GET #show' do
    it 'assigns the requested actuator_type to @actuator' do
        actuator = create(:actuator)
        get :show, id: actuator
        expect(assigns(:actuator)).to eq actuator
    end
    it 'renders the :show template' do
      actuator = create(:actuator)
      get :show, id: actuator
      expect(response).to render_template :show
    end
  end

describe 'GET #new' do
  it 'assigns a new actuator_type to @actuator' do
    get :new
    expect(assigns(:actuator)).to be_a_new (Actuator)
  end
  it 'renders the :new template' do
    get :new
    expect(response).to render_template :new
  end
end
describe 'GET #edit' do
  it 'assigns the request actuator to @actuator' do
    actuator = create(:actuator)
    get :edit, id: actuator
    expect(assigns(:actuator)).to eq actuator
  end
  it 'renders the :edit template' do
    actuator = create(:actuator)
    get :edit, id: actuator
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
      @actuator = create(:actuator)
    end
    it 'deletes actuator_type from the database' do
        expect{ delete :destroy, id: @actuator}.to change(Actuator,:count).by(-1)
    end    
    it 'redirects to users#index' do
      delete :destroy, id: @actuator
      expect(response).to redirect_to actuators_url
    end
  end
end