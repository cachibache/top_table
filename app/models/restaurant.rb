# == Schema Information
#
# Table name: restaurants
#
#  id   :integer          not null, primary key
#  name :string(255)      not null
#

class Restaurant < ActiveRecord::Base

  has_many :reviews

  attr_accessible :name

end