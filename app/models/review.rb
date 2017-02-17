class Review < ActiveRecord::Base

  validates :comment, :user_id, :presence => true

  belongs_to :product
  belongs_to :user

end
