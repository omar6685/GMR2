class Contact < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_rich_text :content_ar
  has_one_attached :image1
  has_one_attached :image2
  has_many employees, dependent: :destroy, inverse_of: :contact
  accepts_nested_attributes_for :employees, reject_if: :all_blank, allow_destroy: true
end
