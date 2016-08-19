# Write your code here.
def dictionary
  words={
    "hello"=> "hi",
    "two"=> "2",
    "too"=> "2",
    "to"=> "2",
    "four"=> "4",
    "for"=> "4",
    "For"=> "4",
    "be"=> "b",
    "you"=> "u",
    "at"=> "@",
    "and"=> "&",
  }
end

def word_substituter(tweet)
   tweet.split.map! { |x| dictionary[x] || x }.join(" ")
  # tweet_array=tweet.split
  # tweet_array.map! do |x|  
  #   if dictionary.include?(x)
  #     dictionary[x]
  #   else
  #     x
  #   end
  # end
  # tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|x| puts word_substituter(x)}
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
 if tweet.length>140
    word_substituter(tweet)
    tweet=tweet[0,140]
  end
  tweet
end






