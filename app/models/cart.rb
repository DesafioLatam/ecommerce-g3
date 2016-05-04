class Cart < ApplicationRecord
  belongs_to :user
  validates :user, presence: true

  after_save :create_new_cart

  def create_new_cart
    if self == user.last_cart and not(self.open?)
      self.user.carts.build().save
    end
  end

  def close!
    self.open = false
    save
  end
end
