# Write your code here.
def dictionary
  subs = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&',
    "for" => '4',

  }
end
def word_substituter(tweet)
  tweets = []
  tweets << tweet.split.collect do |value|
    if dictionary.keys.include?(value.downcase)
      value = dictionary[value.downcase]
    else
      value
    end
  end
  tweets.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..139]
  else
    tweet
  end
end
