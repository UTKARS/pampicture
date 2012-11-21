class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :stock_quantity, :category_id, :image
  validates_presence_of :name, :description, :price, :stock_quantity, :category_id
  validates_numericality_of :price, :greater_than_or_equal_to => 0
  validates_numericality_of :stock_quantity, :greater_than_or_equal_to =>0
  validates :name, :uniqueness => true
  belongs_to :category
end
