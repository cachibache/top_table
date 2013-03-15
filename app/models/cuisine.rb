class Cuisine < ActiveRecord::Base
  
  has_and_belongs_to_many :restaurants

  attr_accessible :name
end
