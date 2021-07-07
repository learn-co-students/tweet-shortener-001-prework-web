# def dictionary
#   words =
#   {
#   "hello" => "hi",
#   "to" => "2",
#   "two" => "2",
#   "too" => "2",
#   "for" => "4",
#   "four" => "4",
#   "be" => "b",
#   "you" => "u",
#   "at" => "@",
#   "and" => "&"
#   }
# end

def word_substituter(tweet)
  dictionary =
  {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
  tweet_array = []
  tweet_array = tweet.split(" ")
  full_words = []
  full_words = dictionary.keys
  tweet_array.each_with_index do |x, y|
    dictionary.each do |long, short|
    if x == long
      tweet_array[y] = short
    end
  end
end
tweet = tweet_array.join(" ")
tweet
end

def bulk_tweet_shortener(array_of_tweets)
    array_of_tweets.collect! do |tweet|
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
  selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = tweet[0..135]
    "#{tweet} ..."
  else
    tweet
  end
end
