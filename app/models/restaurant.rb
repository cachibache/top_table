# == Schema Information
#
# Table name: restaurants
#
#  id   :integer          not null, primary key
#  name :string(255)      not null
#

class Restaurant < ActiveRecord::Base

  attr_accessible :name

end