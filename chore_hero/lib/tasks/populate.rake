require 'faker'

namespace :db do
  desc "Genearate everything!!!!"
  task populate: :environment do
    Parent.populate(20) do |parent|
      parent.name = Faker::Name.name
      parent.email = Faker::Internet.email
      parent.encrypted_password = Parent.new(:password => 'password').encrypted_password
      parent.sign_in_count = 1
    end 
  end 
end