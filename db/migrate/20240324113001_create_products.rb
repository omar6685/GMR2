class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :title_ar
      t.text :description
      t.text :description_ar
      t.string :image_title
      t.string :image_title_ar
      t.text :image_description
      t.text :image_description_ar
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
