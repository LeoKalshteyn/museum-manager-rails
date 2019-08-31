module MuseumsHelper

  def self.count_exhibits(museum_id)
    Exhibit.where(museum_id: museum_id).count
  end

  def self.get_museum_name(museum_id)
    Museum.where(id: museum_id)
  end

end
