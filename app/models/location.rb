class Location < ActiveRecord::Base
  belongs_to :parent, :polymorphic => true
  validates  :address, :city, :pincode, :presence => true
end
