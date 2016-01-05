# http://www.codewars.com/kata/count-the-digit/train/ruby
require 'minitest/spec'
require 'minitest/autorun'

def nb_dig(n, d)
  numbers = (0..n).map { |a| a**2 }
  numbers.map { |a| a.to_s.chars.count d.to_s }.inject(0, :+)
end

describe("nb_dig") do
  it("Basic tests") do
    assert_equal(nb_dig(5750, 0), 4700)
    assert_equal(nb_dig(11011, 2), 9481)
    assert_equal(nb_dig(12224, 8), 7733)
    assert_equal(nb_dig(11549, 1), 11905)
  end
end
