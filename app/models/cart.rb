class Cart < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  has_many :orders

  before_save :update_total_price
  after_save :create_new_cart


  def update_total_price
    self.total_price = current_price
  end

  def create_new_cart
    if self == user.last_cart and not(self.open?)
      self.user.carts.build().save
    end
  end

  def close!
    self.open = false
    save
  end

  def current_price
    orders.collect(&:price).sum()
  end
end
