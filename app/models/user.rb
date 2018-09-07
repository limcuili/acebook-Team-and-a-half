class User < ApplicationRecord
  has_secure_password
  validates :name, uniqueness: true
  validates :email, uniqueness: true
  validates_presence_of :password, :name, :email
  has_many :likes
end
