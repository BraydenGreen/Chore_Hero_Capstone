require 'rails_helper'

RSpec.describe ChoresController, type: :controller do

  let(:user) { FactoryGirl.create(:user) }
  
  before(:each) do
    sign_in user
  end


  describe "POST #create" do
    it "creates a new chore" do
      chore_params = {chore:{title: 'Vaccuum', description: 'Vaccuum the floor', xp_value: 5.5}}
      expect(Chore.count).to eq(0)
      post :create, chore_params
      expect(Chore.count).to eq(1)
      expect(Chore.last.title).to eq('Vaccuum')
      expect(Chore.last.description).to eq('Vaccuum the floor')
      expect(Chore.last.xp_value).to eq(5.5)
    end
  end

  describe "GET #index" do 
    it "show a list of all chores" do
      get :index
      expect(response).to be_success
    end
  end
  

  describe "PUT #update" do 
    it 'updates a chore' do 
      chore = Chore.create(title: 'clean', description: 'clean dishes', xp_value: 5.5)
      update_params = {id: chore.id, chore:{title: 'dont clean'}}
      put :update, update_params
      chore = chore.reload
      expect(chore.title).to eq('dont clean')
    end 
  end    

  describe "GET #show" do
    it "shows chores" do
     chore = Chore.create(title: 'clean', description: 'clean room', xp_value: 5.5)
     get :show, {id: chore.id}
     expect(chore.title).to eq('clean')
     expect(chore.description).to eq('clean room')
     expect(chore.xp_value).to eq(5.5)
    end
  end

  describe "DELETE #destroy" do
    it 'deletes chore' do 
      chore = Chore.create(title: 'Pick up crayons')
      delete :destroy, {id: chore.id}
      expect(Chore.count).to eq(0)
    end
  end    


end
