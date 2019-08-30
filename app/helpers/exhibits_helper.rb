module ExhibitsHelper

  def self.get_exhibits(museum_id)
    Exhibit.where(museum_id: museum_id)
  end

end
