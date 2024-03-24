class About < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_rich_text :content_ar
  has_rich_text :content_2
  has_rich_text :content_ar_2
  has_one_attached :image
  has_one_attached :founder_image
  has_rich_text :founder_description
  has_rich_text :founder_description_ar
  has_many :histories, dependent: :destroy, inverse_of: :about
  accepts_nested_attributes_for :histories, reject_if: :all_blank, allow_destroy: true
end
