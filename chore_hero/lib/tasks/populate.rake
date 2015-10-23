# require 'populator'
# require 'faker'

# namespace :db do
#   desc "creates parent, children, and chores"
#   task populate: :environment do
#     chores = ['Mop', 'Sweep', 'Dust', 'Dishes', 'Clean Bedoom', 'Vacuum', 'Wash Car', 'Wash Dog', 'Feed Dog', 'Pull Weeds', 'Fold Laundry', 'Rake Leaves', 'Mow Lawn']
#     chores_xp_value = [5,10,15,20]
#     chore_complete_value = [false, true]
#     badges = ['Mop HERO!', 'Sweep HERO!', 'Dust HERO!', 'Dishes HERO!', 'Clean Bedoom HERO!', 'Vacuum HERO!', 'Wash Car HERO!', 'Wash Dog HERO!', 'Feed Dog HERO!', 'Pull Weeds HERO!', 'Fold Laundry HERO!', 'Rake Leaves HERO!', 'Mow Lawn HERO!']
#     emails = {parents: [], children: []}
#     password = []
#     Parent.populate 1 do |user|
#       user.name = Faker::Name.name
#       user.email = "#{user.name.downcase.gsub(" ", '')}@parent.com"
#       user.encrypted_password = 'password'
#       #emails << email
#       user.type = 'Parent'
#       user.sign_in_count = 0
#       emails[:parents] << user.email
#       Child.populate 5 do |child|
#         child.parent_id = user.id
#         # child.type = 'Child'
#         child.sign_in_count = 0
#         child.name = Faker::Name.name
#         child.age = Faker::Number.between(3, 18)
#         child.email = "#{child.name}@email.com"
#         child.encrypted_password = 'password'
#         emails[:children] << child.email
#           Chore.populate 4 do |chore|
#             chore.child_id = child.id
#             chore.title = chores.sample
#             chore.xp_value = chores_xp_value.sample
#             chore.complete = chore_complete_value.sample

#           end
#       end
#     end
#   end
#     # if Rails.env == 'development'
#     #   File.open('users.txt', 'a') do |file|
#     #     emails.each do |key, value|
#     #       file.write("#{key}: #{value}")
#     #     end
#     #   end
  
# end

