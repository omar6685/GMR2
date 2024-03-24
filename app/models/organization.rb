class Organization < ApplicationRecord
  belongs_to :information
  has_one_attached :image
end
