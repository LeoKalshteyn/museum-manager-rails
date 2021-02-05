class Museum < ApplicationRecord
  has_many :exhibits
  has_many :users, through: :exhibits

# scope (class method) which selects the exhibits and then counts how many exhibits in each museum by id
# joins)INNER JOIN) returns museum object for all museums with exhibits
  scope :most_exhibits, -> {
    select('exhibits.*, COUNT(exhibits.museum_id) AS museums_count')
    .left_joins(:exhibits)
    .group('museum_id')
    .order('museums_count DESC')
    .limit(1)
  }


end
