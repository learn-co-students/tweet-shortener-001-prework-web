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
  tweet_array = tweet.split (" ")
  corrected_array = []

  tweet_array.each do |word|
    if dictionary.include? (word.downcase)
      corrected_array << dictionary[word.downcase]
    else 
      corrected_array << word
    end
  end

  tweet = corrected_array.join (" ")
  return tweet

end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    return tweet
  else
    return word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)

  if tweet.length < 140
    return tweet
  else 
    return tweet[0..135] + " ..."
  end
end