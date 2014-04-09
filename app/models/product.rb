class Product < ActiveRecord::Base
  attr_accessible :company_id, :description, :name, :user_id

  has_many :personas
  belongs_to :company
  belongs_to :user
end
