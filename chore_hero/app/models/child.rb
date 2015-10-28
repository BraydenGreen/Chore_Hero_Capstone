class Child < User

  belongs_to :parent
  has_many :chores, dependent: :destroy
  has_many :badges, dependent: :destroy

end
