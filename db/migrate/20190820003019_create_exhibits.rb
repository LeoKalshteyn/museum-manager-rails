class CreateExhibits < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibits do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :name
      t.string :origin
      t.string :age
      t.datetime :open_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
