# Write your code here.
DICTIONARY = {
  "hello" => 'hi',
  "to" => 2,
  "two" => 2,
  "too" => '2',
  "for" => 4,
  "For" => 4,
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
}

def word_substituter(tweet)
  tweet.split.map{|x| if DICTIONARY.has_key?(x) then DICTIONARY[x] else x end}.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  shortened = word_substituter(tweet)
  shortened.length > 140 ? shortened[0..136] + "..." : shortened
end