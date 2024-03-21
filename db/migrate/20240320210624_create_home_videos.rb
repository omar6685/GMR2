class CreateHomeVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :home_videos do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
