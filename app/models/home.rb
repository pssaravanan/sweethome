class Home < ActiveRecord::Base
  has_one :location, :as => :parent
  validates_presence_of :location
  validates_presence_of :owner
end
