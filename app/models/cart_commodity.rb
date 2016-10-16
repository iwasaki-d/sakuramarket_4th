class CartCommodity < ActiveRecord::Base
  belongs_to :cart
  belongs_to :commodity

  validates :cart, presence: true
  validates :commodity, presence: true
end
