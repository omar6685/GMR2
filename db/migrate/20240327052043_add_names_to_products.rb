class AddNamesToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :name, :string
    add_column :products, :name_ar, :string
  end
end
