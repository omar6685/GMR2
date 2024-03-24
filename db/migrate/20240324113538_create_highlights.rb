class CreateHighlights < ActiveRecord::Migration[7.0]
  def change
    create_table :highlights do |t|
      t.string :title
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
