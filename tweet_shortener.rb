# Write your code here.
def dictionary
  dic_hash= {"hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  dic_hash= {"hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
  dic_keys = dic_hash.keys
  tweet_array = tweet.split(" ")
  tweet_array.each do |word|
    if dic_keys.include?(word)
      new_word = word.replace(dic_hash[word])
    else
    end
  end
  tweet = tweet_array.join(" ")
  return tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
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
  #return selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet[137] = "..."
    return tweet[1..140]
  else
    return tweet
  end
end
