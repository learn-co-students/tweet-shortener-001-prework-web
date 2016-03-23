# Write your code here.
require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    ["to", "two", "too"] => "2",
    ["for", "four"] => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_words = tweet.split(" ")
  dictionary.each do |keyword, substitute|
    tweet_length = 0..(tweet_words.length-1)
    for i in tweet_length
      word = tweet_words[i].downcase
      if (word != nil && ((keyword.is_a?(Array) && keyword.include?(word.downcase)) || ((keyword.is_a?(String) && keyword == word.downcase))))
        tweet_words[i] = substitute
      end   
    end
  end
  tweet = tweet_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  max_char = 140
  if tweet.length > max_char
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  max_char = 140
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > max_char
    tweet = tweet[0..136]
    tweet << "..."
  else
    tweet
  end
end

