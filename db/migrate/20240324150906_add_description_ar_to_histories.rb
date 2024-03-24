class AddDescriptionArToHistories < ActiveRecord::Migration[7.0]
  def change
    add_column :histories, :description_ar, :string
  end
end
