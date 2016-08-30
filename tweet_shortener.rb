# Write your code here.
require 'pry'
def dictionary
  word_hash = {
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
  tweet_array = tweet.split
  tweet_array.each do |word|
    if dictionary.keys.include?(word) 
      tweet_array[tweet_array.index(word)] = dictionary[word]
    elsif dictionary.keys.include?(word.downcase)
      tweet_array[tweet_array.index(word)] = dictionary[word.downcase]
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    array_of_tweets[array_of_tweets.index(tweet)] = word_substituter(tweet)
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140 
    tweet = tweet[0..139]
  end
  tweet
end