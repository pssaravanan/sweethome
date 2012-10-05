class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  HomeOwner = "HomeOwner"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :personal_number
  has_one :location, :as => :parent
  validates_presence_of :name
  validates_presence_of :personal_number

  def home_owner?
    type.eql?(HomeOwner)
  end
end
