require 'test_helper'
require "minitest/autorun"

require "eightball"

class AnswersArrayTest < Minitest::Test
  def test_answers_array
    assert_includes Eightball::ANSWERS, "Yes"
  end
end
