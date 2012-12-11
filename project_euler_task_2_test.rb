require 'test/unit'
require './project_euler_task_2'

class TestProjectEulerTask2 < Test::Unit::TestCase
  def test_task
    assert_equal(21, fib(7))
  end

  def test_sum_evans_to_10
    assert_equal(10, find_sum_evans(10))
  end
end
