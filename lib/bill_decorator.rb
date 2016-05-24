class BillDecorator
  def initialize(bill)
    @bill = bill
  end

  def decorate_total
    format(bill.total)
  end

  def split_by(number)
    bill.payers.map { |payer| format(payer) }
  end

  private
  
  attr_reader :bill
  attr_accessor :total

  def format(number)
    "£" + sprintf('%.2f', number)
  end
end
