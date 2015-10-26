class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :trackable,
    :validatable

  has_attached_file :avatar, 
    :styles => { :medium => "300x300>", 
    :thumb => "90x90" }, 
    :default_url => "missing.png",
    :storage => :s3,
    :bucket  => ENV['AWS_BUCKET']

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def parent?
    self.type == 'Parent'
  end

  #adding the xp_total to the points_total
  #passing in xp_value from complete_chore method in chores_controller
  def add_points_and_save(xp_value)
    self.points_total += xp_value
    self.save
  end

end