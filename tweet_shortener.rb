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
  "and" => "&",
}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  replaced_tweet = tweet_array.collect do |word|
    dictionary.keys.include?(word.downcase) ? dictionary[word.downcase] : word
    end
  replaced_tweet.join(" ")
end

def bulk_tweet_shortener(array_o_tweets)
  shortened_tweet_array = array_o_tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    puts "#{shortened_tweet[0...137]}..."
  else
    return shortened_tweet
  end
end








