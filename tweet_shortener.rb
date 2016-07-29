# Write your code here.

SHORTENER_DICTIONARY = {
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

def word_substituter(tweet)
  formatted_tweet = tweet.split(' ').collect {|item| SHORTENER_DICTIONARY[item] == nil && SHORTENER_DICTIONARY[item.downcase] == nil ? item : item = SHORTENER_DICTIONARY[item.downcase]}.join(' ')
  formatted_tweet
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_formatted_tweets = array_of_tweets.collect {|item| word_substituter(item)}
  array_of_formatted_tweets.each {|item| puts item}
end

def selective_tweet_shortener(tweet_string)
  if tweet_string.length > 140
    return word_substituter(tweet_string)
  else return tweet_string
  end
end

def shortened_tweet_truncator(tweet_string)
  if selective_tweet_shortener(tweet_string).length > 140
    return tweet_string[0..136] << "..."
  else return tweet_string
  end
end
