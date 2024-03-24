class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.string :year
      t.string :description
      t.belongs_to :about, null: false, foreign_key: true

      t.timestamps
    end
  end
end
