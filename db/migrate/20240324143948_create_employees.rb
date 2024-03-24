class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :name_ar
      t.string :position
      t.string :position_ar
      t.string :phone
      t.string :email
      t.string :language
      t.text :statement
      t.text :statement_ar
      t.belongs_to :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
