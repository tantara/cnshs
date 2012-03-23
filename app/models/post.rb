class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  belongs_to :user
  has_many :replies, :dependent => :destroy
  has_many :up, :class_name => "User"
  has_many :down, :class_name => "User"

  validates :contents, :presence => true

  field :contents, type: String
  has_mongoid_attached_file :picture
end
