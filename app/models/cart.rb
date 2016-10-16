require 'date'

class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_commodities, dependent: :destroy

  validates :user, presence: true

  def selectable_delivery_day
    selectable_delivery_days =(3..20).collect do |item|
      Date.today + item.to_i.day
    end
    selectable_delivery_days.select do |day|
      [1,2,3,4,5].include?(day.wday)
    end
  end
end
