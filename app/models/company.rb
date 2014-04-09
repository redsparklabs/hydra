class Company < ActiveRecord::Base
  attr_accessible :name, :website

  has_many :products
  has_many :users
end
