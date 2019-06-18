require 'test/unit'
require_relative 'calculator'

class CalculatorTest < Test::Unit::TestCase
  def setup
    @calc = Calculator.new('test')
  end

  def test_add
    assert_equal 4, @calc.add(1,3)
    assert_equal 4, @calc.add(3,1)
    assert_equal 0, @calc.add(-2,2)
    assert_equal 10, @calc.add(0,10)
  end

  def test_subtract
    assert_equal 0, @calc.subtract(2,2)
    assert_equal 2, @calc.subtract(3,1)
    assert_equal -2, @calc.subtract(1,3)
    assert_equal 10, @calc.subtract(10,0)
  end

  def test_multiply
    assert_equal 0, @calc.multiply(0,1)
    assert_equal 4, @calc.multiply(1,4)
    assert_equal 81, @calc.multiply(9,9)
    assert_equal -10, @calc.multiply(-2,5)
  end

  def test_divide
    assert_equal 1, @calc.divide(5,5)
    assert_equal -4, @calc.divide(16,-4)
    assert_equal 10, @calc.divide(180,18)
    assert_equal 5, @calc.divide(25,5)
  end
end