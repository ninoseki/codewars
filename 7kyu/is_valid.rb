require 'minitest/spec'
require 'minitest/autorun'

describe "isValid" do
  it "should return true for valid identifiers" do
    assert_equal(is_valid("okay_ok1"), true, "Wrong result for 'okay_ok1'")
    assert_equal(is_valid("$ok"), true, "Wrong result for '$ok'")
    assert_equal(is_valid("___"), true, "Wrong result for '___'")
    assert_equal(is_valid("str_STR"), true, "Wrong result for 'str_STR'")
    assert_equal(is_valid("myIdentf"), true, "Wrong result for 'myIdentf'")
  end

  it "should return false for invalid identifiers" do
    assert_equal(is_valid("1ok0okay"), false, "Wrong result for '1ok0okay'")
    assert_equal(is_valid("!Ok"), false, "Wrong result for '!Ok'")
    assert_equal(is_valid(""), false, "Wrong result for an empty string")
    assert_equal(is_valid("str-str"), false, "Wrong result for 'str-str'")
    assert_equal(is_valid("no no"), false, "Wrong result for 'no no'")
  end
end

def is_valid(idn)
	first, others = idn[0], idn[1..-1]
  return false if idn.empty? || (first =~ /^([a-zA-Z]|_|\$)/).nil?

  others.gsub(/(\w|_|\$)/, '').empty?
end
