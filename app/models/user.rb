class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders
  has_many :products, through: :orders
  has_many :carts
  has_one :last_cart, ->{ order 'created_at desc'}, class_name: 'Cart'

  after_create :build_cart

  def build_cart
    new_cart = carts.build(total_price:0, open:true)
    new_cart.save
  end
end
