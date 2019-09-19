module MuseumsHelper

  def self.count_exhibits(museum_id)
    Exhibit.where(museum_id: museum_id).count
  end

# select from Exhibits where (exhibit count om museum show method) id is museum id
  def self.get_museum_name(museum_id)
    Museum.where(id: museum_id)
  end

end
