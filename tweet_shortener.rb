def dictionary
  hash = {
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

def word_substituter(tweet)

  words = tweet.split(" ")

  words.each_with_index do |word, idx|
    words[idx] = dictionary[word.downcase] if dictionary.include?(word.downcase)
  end

  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet_count = tweet.split("").count

  tweet_count > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  tweet_chars = shortened_tweet.split("").count

  return shortened_tweet[0..136] << "..." if tweet_chars > 140

  shortened_tweet
end
