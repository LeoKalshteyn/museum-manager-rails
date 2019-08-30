module MuseumsHelper

  def self.count_exhibits(museum_id)
    Exhibit.where(museum_id: museum_id).count
  end

end
