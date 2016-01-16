# Write your code here.
def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  shortened_tweet = tweet_array.collect { |word|
    if dictionary.has_key?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  }.join(" ")
end

def bulk_tweet_shortener(tweets)
  shortened_tweets = tweets.collect { |tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    "#{tweet[0..136]}..."
  else
    tweet
  end
  
end