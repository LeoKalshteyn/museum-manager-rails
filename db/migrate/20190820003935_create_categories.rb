class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :culture
      t.string :exhibit_type
      t.string :museum

      t.timestamps
    end
  end
end
