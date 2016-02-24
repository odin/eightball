require 'test_helper'
require 'minitest/autorun'

require 'eightball'

describe Eightball::Base do
  let(:base) { Eightball::Base.new.ask('Is this thing on?') }

  describe 'Answers' do
    it 'should return a string that is in the answers array' do
      Eightball::Answers.new.content.must_include(base.answer)
    end
  end

  describe 'Questions' do
    it 'should take a question as an argument and return the string' do
      assert_equal base.question, 'Is this thing on?'
    end
  end

  describe 'Display' do
    it 'should display the question' do
      base.display.must_include('Question: Is this thing on?')
    end

    it 'should display the answer' do
      base.display.must_include("Answer: #{base.answer}")
    end
  end
end
