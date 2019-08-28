class RemoveDatesOpenFromExhibits < ActiveRecord::Migration[5.2]
  def change
    remove_column :exhibits, :dates_open
  end
end
