def dictionary
  {
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

def word_substituter(tweet)
  split_tweet = tweet.split(" ")

  split_tweet.each_with_index do |word, index|
    dictionary.keys.each do |dict|
      if word == dict || word == dict.capitalize
        split_tweet.delete_at(index)
        split_tweet.insert(index, dictionary[dict])
      end
    end
  end
  split_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    selective_tweet_shortener(tweet)[0..136] + "..."
  else
    selective_tweet_shortener(tweet)
  end
end
