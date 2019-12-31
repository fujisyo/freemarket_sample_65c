class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to_active_hash :prefecture
  belongs_to :user, optional: true
  has_many :product_images
  accepts_nested_attributes_for :product_images, allow_destroy: true
end