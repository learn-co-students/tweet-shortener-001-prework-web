# Write your code here.
def dictionary
  shortener = {
    "hello" => 'hi',
    "to, two, too" => '2',
    "For, for, four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  dictionary.each do |longs, short|
    longs.split(", ").each do |long|
      tweet.gsub!(/([\s\W]#{long}[\s\W])/, " #{short} ")
    end
  end
  tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  word_substituter(tweet) if(tweet.size > 140)
  tweet
end

def shortened_tweet_truncator(tweet)
  tweet = (tweet[0..136] << "...") if (selective_tweet_shortener(tweet).size > 140)
  tweet
end