class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true
  validates :password, length: {minimum: 6}
  
  has_many :characters
end
