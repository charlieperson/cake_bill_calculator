class BillDecorator
  def initialize(bill)
    @bill = bill
  end

  def decorate_total
    "£" + sprintf('%.2f', bill.total)
  end

  def split_by(number)
    # TODO: implement the split_by method
  end


  attr_reader :bill
  attr_accessor :total
end
