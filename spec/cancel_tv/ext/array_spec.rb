require 'spec_helper'

describe Array do

  let(:original_array){ ['test1', 'another', 'zero', 'delta'] }
  let(:test_array){ original_array }

  describe '.entry_first' do
    it 'removes the specified entry from the original array' do
      expect{
         test_array.entry_first('zero')
      }.to change{test_array}.to ['test1', 'another', 'delta']
    end
  end

  describe '.sometestfunction' do
     it 'fails on Circle CI' do
       expect([1,2,3,4].entry_first(4) ).to eq [1,2,3,4]
     end
  end


end

