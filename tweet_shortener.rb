# Write your code here.
def dictionary
  dictionary = {
    "hello"=> "hi",
    "to"=> "2",
    "too"=> "2",
    "two"=> "2",
    "four"=> "4",
    "for"=> "4",
    "For"=> "4",
    "be"=> "b",
    "you"=> "u",
    "at"=> "@",
    "and"=> "&"
  }
end

def word_substituter(tweet)
  tweet.split.map! {|x| dictionary[x] || x}.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each {|x| puts word_substituter(x)}
end


def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
       word_substituter(tweet)
       tweet = tweet[0..139]
  else
    tweet
  end
  tweet
end