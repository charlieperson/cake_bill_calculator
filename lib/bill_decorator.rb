class BillDecorator
  def initialize(bill)
    @bill = bill
  end

  def decorate_total
    "£" + format(bill.total)
  end

  def split_by(number)

  end


  attr_reader :bill
  attr_accessor :total

  private

  def format(number)
    sprintf('%.2f', number)
  end
end
