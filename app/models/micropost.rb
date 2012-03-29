class Micropost < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 280 }
  
  default_scope order: 'microposts.created_at DESC'
end
