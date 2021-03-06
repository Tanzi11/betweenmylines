class User < ActiveRecord::Base
  has_many :stories
  has_secure_password
  validates :username, :email, :password, presence: true

end
