class Snack < ApplicationRecord
  has_and_belongs_to_many :machines

  def average_price
    average(:price)
  end
end
