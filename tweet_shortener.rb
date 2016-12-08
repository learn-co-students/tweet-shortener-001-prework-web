require 'pry'

def dictionary
  { "hello" => "hi",
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
  dict_hash = dictionary
  new_tweet_array = tweet.split
  new_tweet_array.each do |word|
    dict_hash.each do |long, short|
      if word.downcase.gsub(/\W+/,"") == long
        word.gsub!(/#{long}/i, short)
      end
    end
  end
  new_tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  if new_tweet.length > 140
    "#{new_tweet[1..137]}..."
  else
    new_tweet
  end
end
