class Exhibit < ApplicationRecord
  has_many :categories
  has_many :users, through: :catergories
end
