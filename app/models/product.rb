class Product < ApplicationRecord
  validates :name, presence: true
  validates :reference, presence: true
  has_many :movements

  def quantity
    total = 0
    self.movements.each do |movement|
      if movement.movement_type == Movement::MovementTypes[:add]
        total += movement.quantity
      else
        total -= movement.quantity
      end
    end
    return total
  end
end