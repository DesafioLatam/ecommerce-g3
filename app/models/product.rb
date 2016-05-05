class Product < ApplicationRecord
  belongs_to :category
  belongs_to :store
  has_many :orders
  has_many :users, through: :orders
  validates :price, presence: true

end
