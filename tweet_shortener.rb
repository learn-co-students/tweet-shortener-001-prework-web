# Write your code here.
dictionary = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }

def word_substituter(tweet)
  dictionary = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }

  tweet.split.map{|word| dictionary.keys.include?(word.downcase) ? word = dictionary[word.downcase] : word}.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each{|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = selective_tweet_shortener(tweet)[0...140]
  else
    tweet
  end

end

