require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user) { FactoryGirl.create(:user) }
  
  before(:each) do
    sign_in user
  end

  describe "GET #show" do
    it "shows current user" do
     expect(user.email).to eq('example@email.com')
    end
  end

end
