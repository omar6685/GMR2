class Employee < ApplicationRecord
  belongs_to :contact
  has_one_attached :image
end
