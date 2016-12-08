require 'pry'

def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  words = tweet.split(" ")
  short_tweet = words.collect do |wd| 
    dictionary.has_key?(wd.downcase) ? dictionary[wd.downcase] : wd
  end
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |twt| puts word_substituter(twt) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140 
    short_tweet.slice!(137...short_tweet.length)
    short_tweet << "..."
  end
  short_tweet
end
