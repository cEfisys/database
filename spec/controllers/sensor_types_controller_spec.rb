require 'rails_helper'
RSpec.describe SensorTypesController, :type => :controller do

describe 'GET #show' do
    it 'assigns the requested sensor_type to @sensor_type' do
        sensor_type = create(:sensor_type)
        get :show, id: sensor_type
        expect(assigns(:sensor_type)).to eq sensor_type
    end
    it 'renders the :show template' do
      sensor_type = create(:sensor_type)
      get :show, id: sensor_type
      expect(response).to render_template :show
    end
  end

describe 'GET #new' do
  it 'assigns a new sensor_type to @sensor_type' do
    get :new
    expect(assigns(:sensor_type)).to be_a_new (SensorType)
  end
  it 'renders the :new template' do
    get :new
    expect(response).to render_template :new
  end
end
describe 'GET #edit' do
  it 'assigns the request sensor_type to @sensor_type' do
    sensor_type = create(:sensor_type)
    get :edit, id: sensor_type
    expect(assigns(:sensor_type)).to eq sensor_type
  end
  it 'renders the :edit template' do
    sensor_type = create(:sensor_type)
    get :edit, id: sensor_type
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
      @sensor_type = create(:sensor_type)
    end
    it 'deletes sensor_type from the database' do
        expect{ delete :destroy, id: @sensor_type}.to change(SensorType,:count).by(-1)
    end    
    it 'redirects to sensor_type#index' do
      delete :destroy, id: @sensor_type
      expect(response).to redirect_to sensor_types_url
    end
  end
end