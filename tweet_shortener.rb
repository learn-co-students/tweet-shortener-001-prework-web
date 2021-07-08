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

def word_substituter(string)
  words = string.split(" ")
  new_tweet = words.map do |word|
    if dictionary.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end
  new_tweet.join(" ")
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
  shorter_tweet = selective_tweet_shortener(tweet)
  if shorter_tweet.length > 140
    shorter_tweet[0..136].rstrip + "..."
  else
    shorter_tweet
  end
end