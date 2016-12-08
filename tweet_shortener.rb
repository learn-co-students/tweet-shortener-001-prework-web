require 'pry'
# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  words = string.split(" ")

  tweet = words.map do |word|
    if dictionary.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
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
  tweet_to_truncate = selective_tweet_shortener(tweet)

  if tweet_to_truncate.length > 140
    tweet_to_truncate.slice(0..136) + "..."
  else
    tweet_to_truncate
  end

end









