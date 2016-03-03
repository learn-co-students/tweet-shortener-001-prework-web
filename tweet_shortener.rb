def dictionary
  {
  "hello" => 'hi', "Hello" => 'Hi',
  "to" => '2', "To" => '2',
  "two" => '2', "Two" => '2',
  "too" => '2', "Too" => '2',
  "for" => '4', "For" => '4',
  "four" => '4', "Four" => '4',
  'be' => 'b', 'Be' => 'B',
  'you' => 'u', 'You' => 'U',
  "at" => "@", "At" => "@",
  "and" => "&", "And" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.collect {|word, replace| dictionary.keys.include?(word) ? dictionary[word] : word}.join(" ")
end

def bulk_tweet_shortener(tweets)
  new_tweets = []
  tweets.each do |tweet|
    new_tweets << tweet.split.collect {|word, replace| dictionary.keys.include?(word) ? dictionary[word] : word}.join(" ")
  end
  new_tweets.each {|tweet| puts tweet}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet.split.collect {|word, replace| dictionary.keys.include?(word) ? dictionary[word] : word}.join(" ")
  else tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = tweet.split.collect {|word, replace| dictionary.keys.include?(word) ? dictionary[word] : word}.join(" ")
  tweet[0..139]
end