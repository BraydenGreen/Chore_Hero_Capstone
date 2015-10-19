class User < ActiveRecord::Base
  has_many :children
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :trackable,
    :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "60x60" }, :default_url => "/assets/images/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
