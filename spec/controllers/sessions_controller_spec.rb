require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do
describe "should check sessions controller" do
  it "should get create" do
    get :create
    assert_response :success
  end

  it "should get destroy" do
    get :destroy
    assert_response :success
  end
	end
end

