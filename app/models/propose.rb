#encoding: utf-8
class Propose
  include Mongoid::Document
  include Mongoid::Timestamps

  validates :name, :presence => true
  validates :contents, :presence => true

  field :name, type: String
  field :contents, type: String

  def posted_ago?
    ago = Time.now - created_at                                                                                                                         
    context = ""
    if (ago / 3600).to_i > 24
      context = ((ago / 3600) / 24).to_i.to_s + "일 전"
    elsif (ago / 3600).to_i > 0 
      context = (ago / 3600).to_i.to_s + "시간 전"
    elsif (ago / 60) > 1 
      context = (ago / 60).to_i.to_s + "분 전"
    else 
      context = "방금 전" 
    end 
    context
  end 
end
