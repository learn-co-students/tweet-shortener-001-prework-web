# Write your code here.
def dictionary
  dictionary = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@" ,
  "and" => "&",
  "Hello" => 'hi',
  "To" => '2',
  "Two" => '2',
  "Too" => '2',
  "For" => '4',
  "Four" => '4',
  'Be' => 'b',
  'You' => 'u',
  "At" => "@" ,
  "And" => "&"
  }
end

def word_substituter(tweet)
  dict = dictionary
  tweet_arr = tweet.split(" ").map do |word|
    if dict.keys.include?(word)
      dict[word]
    else
      word
    end
  end
  tweet_arr.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  if shortened_tweet.length > 140
    shortened_tweet[0...140]
  else
    shortened_tweet
  end
end
