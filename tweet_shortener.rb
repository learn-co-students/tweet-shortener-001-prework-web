# Write your code here.
require 'pry'

def dictionary
  substitutes = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(tweets)
  array_words = tweets.split(" ")
  short_tweet = ''
  array_words.each { |word|
    dictionary.keys.each { |key|
      if key == word
        array_words[array_words.index(word)] = dictionary[key].to_s
      end
      }
    array_words
    }
  short_tweet << array_words.join(" ")
  short_tweet
end

def bulk_tweet_shortener(array)
  array.each { |tweet|
    puts word_substituter(tweet)
    }
end

def selective_tweet_shortener(tweet)
  tweet_length = tweet.length
  final_tweet = ''
    if tweet_length <= 140
      final_tweet << tweet
    else
      final_tweet << word_substituter(tweet)
    end
  final_tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    shortened_tweet[137..-1] = "..."
  end
  shortened_tweet
end


