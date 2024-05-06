class AddPhoneToSocials < ActiveRecord::Migration[7.0]
  def change
    add_column :socials, :phone, :string
  end
end
