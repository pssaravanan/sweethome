class Home < ActiveRecord::Base
  has_one :location, :as => :parent
  validates_presence_of :location
  validates_presence_of :home_owner_id
  belongs_to :home_owner
  accepts_nested_attributes_for :location
end
