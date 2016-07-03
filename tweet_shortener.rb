# Write your code here.
def dictionary
dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  .join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
	array_of_tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
	if tweet.length > 140
    tweet[137..-1] = "..."
    tweet
  else
    tweet
  end
end