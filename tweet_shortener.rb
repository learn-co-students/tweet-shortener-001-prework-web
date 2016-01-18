
def dictionary
dictionary = 
{"hello" => "hi", 
  "to" => "2", 
  "two" => "2", 
  "too" => "2", 
  "for" => "4", 
  "For" => "4",
  "four" => "4", 
  "be" => "b",
  "you" => "u", 
  "at" => "@", 
  "and" => "&"}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  dictionary_keywords = dictionary.keys
  shortened_tweet_array = tweet_array.collect {|word|
    dictionary_keywords.each {|key| 
      if word == key
        word = dictionary[key]
      end
      }
    word
  }

shortened_tweet_array.join(" ")

end

def bulk_tweet_shortener(array_of_tweets)
array_of_tweets.each{|tweet|
  puts word_substituter(tweet) 
}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  if shortened_tweet.length > 140
    shortened_tweet[0...137] + "..."
  else
    tweet
  end
end
