class Province < ActiveRecord::Base
  attr_accessible :name, :gst, :pst, :hst
  validates_presence_of :name, :gst, :pst, :hst
  validates_uniqueness_of :name
  validates_numericality_of :pst, :less_than_or_equal_to => 1, :greater_than_or_equal_to =>0
  validates_numericality_of :gst, :less_than_or_equal_to => 1, :greater_than_or_equal_to =>0
  validates_numericality_of :hst, :less_than_or_equal_to => 1, :greater_than_or_equal_to =>0
end
