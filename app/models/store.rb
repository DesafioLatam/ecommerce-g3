class Store < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
