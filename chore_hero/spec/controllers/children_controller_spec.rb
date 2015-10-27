require 'rails_helper'

RSpec.describe ChildrenController, type: :controller do

  let(:user) { FactoryGirl.create(:user) }

  let(:child) { FactoryGirl.create(:child) }

  before(:each) do
    sign_in child
  end

  before(:each) do
    sign_in user
  end


  describe "GET #show" do
    it "shows current child" do
     expect(child.email).to eq('example2@email.com')
    end
  end

  describe "DELETE #destroy" do
    it 'deletes child' do 
      expect(Child.count).to eq(1)
      delete :destroy, {id: child.id}
      expect(Child.count).to eq(0)
    end
  end

end
