class Logo < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_rich_text :description
  has_rich_text :description_ar
end
