require 'test_helper'
require 'minitest/autorun'

require 'eightball'

describe Eightball::Base do
  let(:base) { Eightball::Base }

  it 'should return an answer' do
    assert_equal base.ask, 'Yes'
  end
end
