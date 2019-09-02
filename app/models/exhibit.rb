class Exhibit < ApplicationRecord
  belongs_to :user
  belongs_to :museum
  belongs_to :transit_status

  scope :most_exhibits, -> {
    select('exhibits.*, COUNT(exhibits.museum_id) AS museums_count')
    .group('museum_id')
    .order('museums_count DESC')
    .limit(1)
  }

  def self.arrived
    where(transit_status_id: 3)
    .limit(4)
  end

end
