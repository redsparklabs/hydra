class Story < ActiveRecord::Base
  attr_accessible :description, :effort, :impact, :name, :persona_id, :product_id, :user_id, :completed

  belongs_to :product
  belongs_to :persona
  belongs_to :user

  def priority
  	(impact * effort)
  end

end
