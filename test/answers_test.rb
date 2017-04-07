require 'test_helper'
require 'minitest/autorun'

require 'eightball'

describe Eightball::Answers do
  let(:answers) { Eightball::Answers.content }

  it 'should return an array' do
    answers.must_be_instance_of(Array)
  end

  it 'should contain answers' do
    assert_includes answers, 'Yes'
  end
end
