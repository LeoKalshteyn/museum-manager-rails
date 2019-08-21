class User < ApplicationRecord
  has_many :categories
  has_many :exhibits, through: :categories

  validates :username, :email, presence: true
  validates :email, uniqueness: true

  has_secure_password

end
