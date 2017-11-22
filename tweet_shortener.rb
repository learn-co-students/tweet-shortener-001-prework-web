def dictionary
  dictionary = {
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

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
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
  shortened = word_substituter(tweet)
  if shortened.length > 140
    shortened[0..134] + "(...)"
  else
    tweet
  end
end
