class Product < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "240x240>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :name, :description, :price, :image, :presence => true

  has_many :reviews

end
