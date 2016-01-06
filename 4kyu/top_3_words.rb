# http://www.codewars.com/kata/51e056fe544cf36c410000fb/train/ruby
require 'minitest/spec'
require 'minitest/autorun'

def top_3_words(text)
  hash = Hash.new { 0 }
  text.downcase.scan(/\w+[\w']*/).each { |w| hash[w] += 1 }
  hash.sort_by { |_, v| -v }.map(&:first).take(3)
end

describe 'top_3_words' do
  it 'test' do
    assert_equal(top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e"), ["e", "ddd", "aa"])
    assert_equal(top_3_words("  //wont won't won't"), ["won't", "wont"])
    assert_equal(top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."),  ["a", "of", "on"])
  end
end
