class Commodity < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true
  validates :position, presence: true
  validates :enabled_view, inclusion: {in: [true, false]}

  default_value_for :position, 0
  default_value_for :price, 0
  default_value_for :enabled_view, false

  def self.enabled_view_commodities
    Commodity.where(enabled_view: true).order(:position)
  end
end
