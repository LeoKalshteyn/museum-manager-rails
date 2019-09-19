class Exhibit < ApplicationRecord
  belongs_to :user
  belongs_to :museum
  belongs_to :transit_status

  validates :open_date, date: true
  validates :close_date, date: true

  # MOVE SCOPE TO MUSEUMS MODEL
  # review bcrypt and forms
  #

  def self.arrived
    where(transit_status_id: 3)
    .limit(4)
  end

end
