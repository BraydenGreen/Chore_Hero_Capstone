require 'rails_helper'

RSpec.describe ParentsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #parent_show" do
    it "shows the parent" do
      get :parent_show
      expect(response).to have_http_status(:success)
    end
  end
end
