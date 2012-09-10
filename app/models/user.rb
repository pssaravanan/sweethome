class User < ActiveRecord::Base
  has_one :location, :as => :parent
  validates_presence_of :name
  validates_presence_of :personal_number
  validates_presence_of :office_number
end
