require 'spec_helper'
require 'bill'

describe Bill do
  subject { Bill.new(subtotal: 23, service_charge: 1, discount: 2) }

  describe '#total' do
    it 'should return an amount' do
      expect(subject.total).to eq(22)
    end
  end

  describe '#split_by' do
    it 'should return an array of amounts' do
      allow(Kernel).to receive(:rand).and_return 1
      expect(subject.split_by(3)).to eq([7.33, 7.34, 7.33])
    end
  end
end
