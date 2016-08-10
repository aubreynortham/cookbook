class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :dish
      t.text :instructions

      # good use of text data type!

      t.timestamps
    end
  end
end
