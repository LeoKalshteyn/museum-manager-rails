class User < ApplicationRecord
  has_many :exhibits
  has_many :categories, through: :exhibits

  validates :username, :email, presence: true
  validates :email, uniqueness: true

  has_secure_password

end
