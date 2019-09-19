module ExhibitsHelper

# select from Exhibits where museum id is museum id
  def self.get_exhibits(museum_id)
    Exhibit.where(museum_id: museum_id)
  end

end
