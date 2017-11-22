def dictionary
  dictionary = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  tweet.split.map do |x|
  if dictionary.keys.include?(x.downcase)
    x = dictionary[x.downcase]
  else
    x
  end
end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet|
  puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  x = selective_tweet_shortener(tweet)
  if x.length > 140
    "#{x[0..135]} ..."
  else
    x
  end
end
