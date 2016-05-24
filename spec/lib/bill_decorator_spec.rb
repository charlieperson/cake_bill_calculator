require 'spec_helper'

describe BillDecorator do
  let(:bill) { double(:bill) }
  subject { BillDecorator.new(bill) }

  describe '#total' do
    it 'should return a string with currency and two decimals' do
      allow(bill).to receive(:total).and_return(10)
      expect(subject.decorate_total).to eq('£10.00')
    end
  end

  describe '#split_by' do
    xit 'should return an array of amounts' do
      expect(subject.split_by(3)).to eq(['£3.34', '£3.33', '£3.33'])
    end
  end
end
