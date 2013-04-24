class Sandwichpost < ActiveRecord::Base
  attr_accessible :quote, :sandwich_type
  belongs_to :user
  validates :user_id, presence: true
  validates :sandwich_type, presence: true
  validates :quote, presence: true
  
  default_scope order: 'sandwichposts.created_at DESC'
end
