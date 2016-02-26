require 'rails_helper'
RSpec.describe GreenKubBoxesController, :type => :controller do
  
describe 'GET #show' do
    it 'assigns the requested green_kub_box to @green_kub_box' do
        green_kub_box = create(:green_kub_box)
        get :show, id: green_kub_box
        expect(assigns(:green_kub_box)).to eq green_kub_box
    end
    it 'renders the :show template' do
      green_kub_box = create(:green_kub_box)
      get :show, id: green_kub_box
      expect(response).to render_template :show
    end
  end

describe 'GET #new' do
  it 'assigns a new green_kub_box to @green_kub_box' do
    get :new
    expect(assigns(:green_kub_box)).to be_a_new (green_kub_box)
  end
  it 'renders the :new template' do
    get :new
    expect(response).to render_template :new
  end
end
describe 'GET #edit' do
  it 'assigns the request green_kub_box to @green_kub_box' do
    green_kub_box = create(:green_kub_box)
    get :edit, id: green_kub_box
    expect(assigns(:green_kub_box)).to eq green_kub_box
  end
  it 'renders the :edit template' do
    green_kub_box = create(:green_kub_box)
    get :edit, id: green_kub_box
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
      @green_kub_box = create(:green_kub_box)
    end
    it 'deletes green_kub_box from the database' do
        expect{ delete :destroy, id: @green_kub_box}.to change(GreenKubBox,:count).by(-1)
    end    
    it 'redirects to users#index' do
      delete :destroy, id: @green_kub_box
      expect(response).to redirect_to green_kub_boxes_url
    end
  end
end