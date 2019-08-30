class Museum < ApplicationRecord
  has_many :exhibits
  has_many :users, through: :exhibits

end
