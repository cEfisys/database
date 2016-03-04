require 'rails_helper'
RSpec.describe ModelsController, :type => :controller do
  
describe 'GET #show' do
    it 'assigns the requested model to @model' do
        model = create(:model)
        get :show, id: model
        expect(assigns(:model)).to eq model
    end
    it 'renders the :show template' do
      model = create(:model)
      get :show, id: model
      expect(response).to render_template :show
    end
  end

describe 'GET #new' do
  it 'assigns a new model to @model' do
    get :new
    expect(assigns(:model)).to be_a_new (Model)
  end
  it 'renders the :new template' do
    get :new
    expect(response).to render_template :new
  end
end
describe 'GET #edit' do
  it 'assigns the request model to @model' do
    model = create(:model)
    get :edit, id: model
    expect(assigns(:model)).to eq model
  end
  it 'renders the :edit template' do
    model = create(:model)
    get :edit, id: model
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
      @model = create(:model)
    end
    it 'deletes model from the database' do
        expect{ delete :destroy, id: @model}.to change(Model,:count).by(-1)
    end    
    it 'redirects to model#index' do
      delete :destroy, id: @model
      expect(response).to redirect_to models_url
    end
  end
end