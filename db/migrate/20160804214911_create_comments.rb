class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :recipe, foreign_key: true
      # thumbsup.png
      t.timestamps
    end
  end
end
