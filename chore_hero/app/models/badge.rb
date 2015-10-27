class Badge < ActiveRecord::Base
  belongs_to :child
  
  has_attached_file :avatar, 
    :styles => { :medium => "300x300>", 
    :thumb => "60x60" }, 
    :default_url => "missing.png",
    :storage => :s3,
    :bucket  => ENV['AWS_BUCKET']

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def self.assigned(user_id)
    user = User.find(user_id)
    if user.parent?
      assigned = []
      user.children.each do |child|
        assigned << {name: child.name, count: child.chores.count} 
      end
      assigned
    end
  end


end


