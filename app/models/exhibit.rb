class Exhibit < ApplicationRecord
  belongs_to :user
  belongs_to :museum

  def exhibit_count
    exhibit.count
  end
  
end
