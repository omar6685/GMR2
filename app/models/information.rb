class Information < ApplicationRecord
  belongs_to :user
  has_many :organization, dependent: :destroy, inverse_of: :information
  accepts_nested_attributes_for :organization, reject_if: :all_blank, allow_destroy: true
end
