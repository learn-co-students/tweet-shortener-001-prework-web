require 'pry'

def word_substituter(tweet)
  tweet_arr = tweet.split(' ')
  result = tweet_arr.map { |w| dictionary(w) }
  tweet = result.join(' ')
  tweet
end

def dictionary(word)
  dict = {'hello' =>  'hi','to' => '2','two' => '2','too' => '2','for' => '4','four' => '4','be' => 'b','you' => 'u','at' => '@','and' => '&'}
  return dict[word.downcase] if dict[word.downcase] != nil
  word
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet = word_substituter(tweet) if tweet.length > 140
  tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = tweet[0..136]+'...'
  end
  tweet
end
