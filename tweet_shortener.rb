require 'pry'

def dictionary
  {
    "hello" => "hi", "to" => "2", "two" => "2", "too" => "2",
    "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)

  edited_tweet = tweet
  dictionary.each do |word,replacement|
    regexp = '\b\b'.insert(2,word)
    pattern = Regexp.new(regexp, Regexp::IGNORECASE)
    edited_tweet.gsub!(pattern,replacement)
  end
  edited_tweet
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[137..-1] = "..."
    tweet
  else
    tweet
  end
end
