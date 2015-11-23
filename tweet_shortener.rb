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
  tweet.split.map { |wrd| dictionary.has_key?(wrd.downcase) ? wrd = dictionary[wrd.downcase] : wrd }.join(" ")
end

def bulk_tweet_shortener(tweets)
  for tweet in tweets do
    puts word_substituter(tweet)
  end
end

