# Write your code here.
def word_substituter(tweet)
  dictionary = {
    "hello" =>' hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" =>'u',
    "at" => "@",
    "and" => "&"
  }
  short_tweet = tweet.split
  dictionary.each do |key,value|
    short_tweet.map! {|x| x.downcase == key ? value: x}
  end
  short_tweet.join(' ')
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
  if selective_tweet_shortener(tweet).length <= 140
    tweet
  else
    selective_tweet_shortener(tweet)[0..136] << "..."
  end
end
