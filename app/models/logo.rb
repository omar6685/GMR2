class Logo < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_one_attached :logo
  has_rich_text :description
  has_rich_text :description_ar
  has_one_attached :pdf_file
  has_one_attached :favicon
end
