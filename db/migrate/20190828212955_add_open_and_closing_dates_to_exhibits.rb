class AddOpenAndClosingDatesToExhibits < ActiveRecord::Migration[5.2]
  def change
    add_column :exhibits, :open_date, :datetime
    add_column :exhibits, :close_date, :datetime
  end
end
