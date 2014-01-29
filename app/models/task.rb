class Task < ActiveRecord::Base
  attr_accessible :active, :name, :points
  
  has_many :chores
  validates_presence_of :points, :name
  validates_numericality_of :points, :only_integer => true, :greater_than_or_equal_to => 1

  scope :alphabetical, order('name')
  scope :active, where('active = ?', true)
  
end
