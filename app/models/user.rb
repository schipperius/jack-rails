class User < ActiveRecord::Base
	rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, 
  :remember_me, :confirmed_at
  # attr_accessible :title, :body

  # Devise (by default) will check that the email address 
  # and password are not blank and that the email address is unique.
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false

end
