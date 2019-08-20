class CreateExhibits < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibits do |t|
      t.string :name
      t.string :origin
      t.string :age

      t.timestamps
    end
  end
end
