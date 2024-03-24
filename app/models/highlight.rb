class Highlight < ApplicationRecord
  belongs_to :product
  has_rich_text :content
  has_rich_text :content_ar
  has_one_attached :image
end
