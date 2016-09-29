def dictionary
  hash = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "For" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
   }
end
 
def word_substituter(tweet)
  tweet.split(" ").each { |e| e.replace dictionary[e] if dictionary[e] }.join(" ")
end
 
def bulk_tweet_shortener(tweets)
  tweets.each { |e| puts word_substituter(e) }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
   word_substituter(tweet)
   else  
   tweet
  end
end

def shortened_tweet_truncator(tweet)
 shorten_tweet = selective_tweet_shortener(tweet)
 shorten_tweet.length >= 141 ? shorten_tweet[0..135] << " ..." : shorten_tweet
end