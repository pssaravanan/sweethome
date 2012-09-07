class Location < ActiveRecord::Base
  belongs_to :parent, :polymorphic => true
  validates :parent_id, :door_no, :street, :city, :pincode, :presence => true
end
