class Product < ActiveRecord::Base
  attr_accessor :image
  mount_uploader :image, ImageUploader

  belongs_to :seller
  validates :price,:name , presence: true
  validates_numericality_of :price
end
