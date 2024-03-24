class Contact < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_rich_text :content_ar
  has_one_attached :image1
  has_one_attached :image2
end
