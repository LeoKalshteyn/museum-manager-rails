class AddTransitStatusIdToExhibits < ActiveRecord::Migration[5.2]
  def change
    add_column :exhibits, :transit_status_id, :integer
  end
end
