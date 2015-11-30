require 'minitest/spec'
require 'minitest/autorun'

describe 'get_sum' do
  it 'test' do
    assert_equal(get_sum(0,1),1)
    assert_equal(get_sum(0,-1),-1)
    assert_equal(get_sum(1,2),3)
    assert_equal(get_sum(5,-1),14)
  end
end

def get_sum(a, b)
  a, b = [a, b].sort
  (a..b).inject(0, :+)
end
