class AddContactDetailsToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :name1, :string
    add_column :contacts, :name1_ar, :string
    add_column :contacts, :position1, :string
    add_column :contacts, :position1_ar, :string
    add_column :contacts, :phone1, :string
    add_column :contacts, :email1, :string
    add_column :contacts, :language1, :string
    add_column :contacts, :statement1, :text
    add_column :contacts, :statement1_ar, :text
    add_column :contacts, :name2, :string
    add_column :contacts, :name2_ar, :string
    add_column :contacts, :position2, :string
    add_column :contacts, :position2_ar, :string
    add_column :contacts, :phone2, :string
    add_column :contacts, :email2, :string
    add_column :contacts, :language2, :string
    add_column :contacts, :statement2, :text
    add_column :contacts, :statement2_ar, :text
  end
end
