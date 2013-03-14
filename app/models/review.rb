class Review < ActiveRecord::Base
  
  belongs_to :restaurant

  attr_accessible :title, :body

end
