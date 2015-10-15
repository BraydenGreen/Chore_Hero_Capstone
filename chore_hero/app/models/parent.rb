class Parent < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :children 

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "60x60" }, :default_url => "/public/default.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/      
end
