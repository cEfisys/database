require 'rails_helper'
RSpec.describe SensorsController, :type => :controller do

describe 'GET #show' do
    it 'assigns the requested sensor to @sensor' do
        sensor = create(:sensor)
        get :show, id: sensor
        expect(assigns(:sensor)).to eq sensor
    end
    it 'renders the :show template' do
      sensor = create(:sensor)
      get :show, id: sensor
      expect(response).to render_template :show
    end
  end

describe 'GET #new' do
  it 'assigns a new sensor to @sensor' do
    get :new
    expect(assigns(:sensor)).to be_a_new (Sensor)
  end
  it 'renders the :new template' do
    get :new
    expect(response).to render_template :new
  end
end
describe 'GET #edit' do
  it 'assigns the request sensor to @sensor' do
    sensor = create(:sensor)
    get :edit, id: sensor
    expect(assigns(:sensor)).to eq sensor
  end
  it 'renders the :edit template' do
    sensor = create(:sensor)
    get :edit, id: sensor
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
      @sensor = create(:sensor)
    end
    it 'deletes sensor from the database' do
        expect{ delete :destroy, id: @sensor}.to change(Sensor,:count).by(-1)
    end    
    it 'redirects to sensor#index' do
      delete :destroy, id: @sensor
      expect(response).to redirect_to sensors_url
    end
  end
end