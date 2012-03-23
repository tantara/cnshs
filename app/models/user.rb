class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  has_many :posts, :dependent => :destroy
  has_many :replies, :dependent => :destroy

  validates :fb_id, :uniqueness => true

  field :name, type: String
  field :fb_id, type: String
  has_mongoid_attached_file :profile_picture
end
