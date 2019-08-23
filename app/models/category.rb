class Category < ApplicationRecord
  has_many :exhibits
  has_many :users, through: :exhibits
end
