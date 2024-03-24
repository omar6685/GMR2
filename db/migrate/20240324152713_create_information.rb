class CreateInformation < ActiveRecord::Migration[7.0]
  def change
    create_table :information do |t|
      t.string :name
      t.string :name_ar
      t.string :title
      t.string :title_ar
      t.text :description
      t.text :description_ar
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
