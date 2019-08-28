class AddDaysOpenToExhibits < ActiveRecord::Migration[5.2]
  def change
    add_column :exhibits, :dates_open, :datetime
  end
end
