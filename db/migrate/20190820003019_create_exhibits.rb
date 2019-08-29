class CreateExhibits < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibits do |t|
      t.integer :user_id
      t.integer :museum_id
      t.string :name
      t.string :origin
      t.string :age
      t.string :description
      t.string :material
      t.string :culture
      t.string :exhibit_type

      t.timestamps
    end
  end
end
