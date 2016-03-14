# Write your code here.
def dictionary
  {"hello" => 'hi',
"to" => "2", "two" => "2", "too" => "2",
"for" => "4", "four" => "4", "For" => "4",
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
  }
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  array = []
  tweet.each do |x|
    x = dictionary[x] if dictionary.keys.include?(x)
    array << x
  end
  array.join(" ")
end


def bulk_tweet_shortener(tweet)
  tweet.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end


def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
    return short_tweet[1..137] + "..."
  else
    return short_tweet
  end
end



