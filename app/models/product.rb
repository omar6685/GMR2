class Product < ApplicationRecord
  belongs_to :user
  has_many :features, dependent: :destroy, inverse_of: :product
  has_many :highlights, dependent: :destroy, inverse_of: :product
  accepts_nested_attributes_for :features, reject_if: :all_blank, allow_destroy: true
end
