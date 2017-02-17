class Product < ActiveRecord::Base

  validates :name, :description, :price, :image, :presence => true

  has_many :reviews

end
