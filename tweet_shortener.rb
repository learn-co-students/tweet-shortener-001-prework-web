require 'pry'


def dictionary
  {'hello': 'hi',
    'to': '2',
    'two': '2',
    'too': '2',
    'for': '4',
    'four': '4',
    'be': 'b',
    'you': 'u',
    'at': '@',
    'and': '&'
  }
end

def word_substituter(str)
  str.split.map! do |word|
    dictionary[word.downcase.to_sym] || word
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(str)
  if str.length >= 140
    return word_substituter(str)[0..139]
  else
    return str
  end
end

def shortened_tweet_truncator(str)
  if str.length >= 140
    word_substituter(str)[0..136] + "..."
  else
    str[0..136]
  end
end