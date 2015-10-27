require 'rails_helper'

RSpec.describe BadgesController, type: :controller do

  let(:user) { FactoryGirl.create(:user) }
  
  before(:each) do
    sign_in user
  end

  describe "GET #index" do 
    it "show a list of all badges" do
      get :index
      expect(response).to be_success
    end
  end

  
  describe "POST #create" do
    it "creates a new badge" do
      badge = {badge:{title:'Good'}}
      expect(Badge.count).to eq(0)
      post :create, badge
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


  describe "GET #show" do
    it "shows badges" do
     badge = Badge.create(title: 'clean')
     get :show, {id: badge.id}
     expect(badge.title).to eq('clean')
    end
  end 

  describe "DELETE #destroy" do
    it 'deletes badge' do 
      badge = Badge.create(title: 'Ice Cream')
      delete :destroy, {id: badge.id}
      expect(Badge.count).to eq(0)
    end
  end

end
