require 'rails_helper'
RSpec.describe SensorActuatorInfosController, :type => :controller do

describe 'GET #show' do
    it 'assigns the requested sensor_actuator_info to @sensor_actuator_info' do
        sensor_actuator_info = create(:sensor_actuator_info)
        get :show, id: sensor_actuator_info
        expect(assigns(:sensor_actuator_info)).to eq sensor_actuator_info
    end
    it 'renders the :show template' do
      sensor_actuator_info = create(:sensor_actuator_info)
      get :show, id: sensor_actuator_info
      expect(response).to render_template :show
    end
  end

describe 'GET #new' do
  it 'assigns a new sensor_actuator_info to @sensor_actuator_info' do
    get :new
    expect(assigns(:sensor_actuator_info)).to be_a_new (SensorActuatorInfo)
  end
  it 'renders the :new template' do
    get :new
    expect(response).to render_template :new
  end
end
describe 'GET #edit' do
  it 'assigns the request sensor_actuator_info to @sensor_actuator_info' do
    sensor_actuator_info = create(:sensor_actuator_info)
    get :edit, id: sensor_actuator_info
    expect(assigns(:sensor_actuator_info)).to eq sensor_actuator_info
  end
  it 'renders the :edit template' do
    sensor_actuator_info = create(:sensor_actuator_info)
    get :edit, id: sensor_actuator_info
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
      @sensor_actuator_info = create(:sensor_actuator_info)
    end
    it 'deletes sensor_actuator_info from the database' do
        expect{ delete :destroy, id: @sensor_actuator_info}.to change(SensorActuatorInfo,:count).by(-1)
    end    
    it 'redirects to sensor_actuator_info#index' do
      delete :destroy, id: @sensor_actuator_info
      expect(response).to redirect_to sensor_actuator_infos_url
    end
  end
end