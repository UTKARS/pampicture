class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :stock_quantity, :category_id, :image
  validates_presence_of :name, :description, :price, :stock_quantity, :category_id
  validates :name, :uniqueness => true
  belongs_to :category
end
