require 'pry'

class Bill
  def initialize(subtotal:, service_charge: 0, discount: 0)
    @subtotal, @service_charge, @discount = subtotal, service_charge, discount
  end

  def total
    subtotal + service_charge - discount
  end

  def split_by(number)
    payers = []
    rounded_split = round_down((self.total / number.to_f))
    leftover = round_up(self.total - (rounded_split * number))
    number.times { payers << rounded_split }
    payers[Kernel.rand(payers.length)] += leftover
    return payers
  end

  attr_reader :subtotal, :service_charge, :discount

  private

  def round_down(number)
    (number*100).floor/100.0
  end

  def round_up(number)
    (number*100).ceil/100.0
  end
end
