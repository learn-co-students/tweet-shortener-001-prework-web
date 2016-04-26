# Write your code here.
def dictionary 
  {
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
  tweet.split.collect {|word| dictionary.keys.include?(word.downcase) ? word = dictionary[word.downcase] : word }.join(" ")
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.collect {|tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  
  word_substituter(tweet).length > 140 ? word_substituter(tweet)[0..136] + "..." : word_substituter(tweet)
end

