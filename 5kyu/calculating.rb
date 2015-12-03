# http://www.codewars.com/kata/calculating-with-functions/train/ruby
require 'minitest/spec'
require 'minitest/autorun'

describe 'static example calculations' do
  it 'test' do
    assert_equal seven(times(five())), 35
    assert_equal four(plus(nine())), 13
    assert_equal eight(minus(three())), 5
    assert_equal six(divided_by(two())), 3
  end
end

class Object
  %w[zero one two three four five six seven eight nine].each.with_index do |name, n|
    define_method(name) do |args = nil|
      args ? n.send(*args) : n.to_f
    end
  end

  [['plus', :+], ['minus', :-], ['times', :*], ['divided_by', :/]].each do |name, symbol|
    define_method(name) do |n|
      [symbol, n]
    end
  end
end
