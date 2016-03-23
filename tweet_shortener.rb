# Write your code here.
def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(string)
  str_a = string.split
  key = dictionary.keys

  str_a.each.with_index {|x, i|
    str_a[i] = dictionary[x.downcase]   if key.include?(x.downcase)
    }
  str_a.join(" ")
end

def bulk_tweet_shortener(ar_tweets)
  ar_tweets.each {|x|
    puts word_substituter(x)
    }
end

def selective_tweet_shortener(string)
  if string.size > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if string.size > 140
    string[0...140]
  else
    string
  end
end
