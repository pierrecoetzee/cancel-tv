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


end

