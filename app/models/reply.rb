class Reply
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :post

  validates :contents, :presence => true

  field :contents, type: String
end
