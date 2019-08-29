class CreateMuseums < ActiveRecord::Migration[5.2]
  def change
    create_table :museums do |t|
      t.string :city
      t.string :country
      t.string :museum_name

      t.timestamps
    end
  end
end
