class User < ApplicationRecord
  has_secure_password
  has_many :stories
  has_many :pins, through :stories
  has_many :comments
end
