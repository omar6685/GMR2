class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :url
      t.string :title
      t.belongs_to :information, null: false, foreign_key: true

      t.timestamps
    end
  end
end
