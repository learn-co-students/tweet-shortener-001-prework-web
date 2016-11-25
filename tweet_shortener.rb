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
  tweet = tweet.split
  short = []
  tweet.each do |word|
    if dictionary.keys.include?(word.downcase)
      short << dictionary[word.downcase]
    else
      short << word
    end
  end
  short.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else tweet.length < 130
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  revised = selective_tweet_shortener(tweet)
  if revised.length > 140
    short_tweet = word_substituter(tweet)
    if short_tweet.length > 140
      short_tweet[0...137] << "..."
    else
      short_tweet
    end
  else
    revised
  end
end

