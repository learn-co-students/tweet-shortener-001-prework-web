def dictionary
  {
    "hello" => "hi",
    "to"    => "2",
    "two"   => "2",
    "too"   => "2",
    "for"   => "4",
    "four"  => "4",
    "be"    => "b",
    "you"   => "u",
    "at"    => "@",
    "and"   => "&"
  }
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  tweet.each do |word|
    if dictionary.include?(word.downcase)
      tweet[tweet.index(word)] = dictionary[word.downcase]
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
    if tweet.length > 140
      tweet[0..135] + " ..."
    end
  else
    tweet
  end
end
