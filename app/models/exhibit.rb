class Exhibit < ApplicationRecord
  belongs_to :user
  belongs_to :museum

  scope :most_exhibits, -> {
    select('exhibits.*, COUNT(exhibits.museum_id) AS museums_count')
    .group('museum_id')
    .order('museums_count DESC')
    .limit(1)
  }

  def exhibit_count
    exhibit.count
  end

end
