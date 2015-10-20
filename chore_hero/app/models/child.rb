class Child < User
  belongs_to :parent
  has_many :chores
  has_many :badges
end
