require 'minitest/spec'
require 'minitest/autorun'

describe 'get_best_word' do
  it 'test' do
    points = [1,3,3,2,1,4,2,4,1,8,10,1,2,1,1,3,8,1,1,1,1,4,10,10,10,10]
    assert_equal(get_best_word(points, ["WHO","IS","THE","BEST","OF","US"]), 0)
    assert_equal(get_best_word(points, ["AABCDEF", "WHO","IS","THE","BEST","OF","US"]), 1)
    assert_equal(get_best_word(points, ["NOQ","TXAY","S","OM","ESFT","CJUKQ","QL","QO","ASTK","Y"]), 5)
    assert_equal(get_best_word(points, ["N","AO","TQGZW","P","OBTP","CLWXB","Y","JQGFJ","Q","RP","OC","MRQCZ","ZWN","ZRT","OIRYH","GWPMSZP","LQRYUKQ","LBM","LFEI","VHUX","RTALLIC","JEMUPS","XUW","X","ZLXFMWS","LFAGR","HJ","RTUAI","JRBNG","ZUYSC","CIEYV","FUY","B","EJS","CINBTQS","JEAC","JX","LLILSEK","W","KLUV"]), 16)
    assert_equal(get_best_word(points, ["SVWLIDP","FCPKTHW","EREMN","NFEF","PQ","FSC","ZYPOSXJ","BOR","YCGG","RC","DVPE","VAOE","OIGK","OTQE","REJFUFD","FVBCSSB","VHJ","BEC","MWZQ","WX","L","ZPCB","JKLHE","RYFTY","NKP","ID","O","KA","VRXX","NTDB","OERKPC","YFLUI","SKQCJ","PXDSW","ITYWD","TC","LOIDQEJ","NE","YND","VJHOCEC","RPRANZ","BQ","STM","RGVBFW","SMWUYLW","KT","SXHY","XCE","T","SC","UDJU","CHDR","UGXNQ","CQOOBA","O","NWW","V","L","BAQ","AZN","LBTR","N","QSURR","KADPH","M","LCBEAKM","ZHEVXS","F","TVAIQCY","MF","KCI","YQ","RCG","AKYPCP","WJXG","RQXOI","SJI","TWXZ","J","HIKCGHV","EAAXGG","AETSH","EO","BUET","TDIQCO","TKL","FJCRY","ZHAJLK","OLMCVA","F"]), 6)
  end
end

def get_best_word(points, words)
  scores = {}
  words.each do |word|
    scores[word] = word.chars.map { |ch| points[ch.ord - 'A'.ord] }.inject(0, :+)
  end
  max = scores.values.max
  key = scores.select { |_, v| v == max }.keys.sort_by(&:length).first

  words.index(key)
end
