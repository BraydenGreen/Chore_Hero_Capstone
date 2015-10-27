class Child < User

  belongs_to :parent, dependent: :destroy
  has_many :chores, dependent: :destroy
  has_many :badges, dependent: :destroy

end
