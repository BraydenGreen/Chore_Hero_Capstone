require 'rails_helper'


RSpec.describe BadgesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe "POST #create" do
    it "creates a new badge" do
      badge = Badge.create(title:'Good')
      # expect(Badge.count).to eq(0)
      expect(Badge.count).to eq(1)
      expect(Badge.last.title).to eq('Good')
      
    end
  end

  describe "PUT #update" do 
    it 'updates a badge' do 
      badge = Badge.create(title: 'clean')
      update_params = {id: badge.id, badge:{title: 'dont clean'}}
      put :update, update_params
      badge = badge.reload
      expect(badge.title).to eq('dont clean')
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
