class Product < ApplicationRecord
  belongs_to :user
  has_many :features, dependent: :destroy, inverse_of: :product
  has_many :highlights, dependent: :destroy, inverse_of: :product
end
