def dictionary
  dictionary = {"hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweet)
  tweetArray = tweet.split(" ")
  
  badWords = dictionary.keys
  
  freshTweet = []
          
  tweetArray.each do |tweetWord|
    tweetWordLower = tweetWord.downcase
    
    if badWords.include?(tweetWordLower)
      freshTweet << dictionary[tweetWordLower]
    else
      freshTweet << tweetWord
    end
  end
  
  freshTweet.join(" ")
end

def bulk_tweet_shortener(multTweets)
  multTweets.each do |tweet|
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
  freshTweet = word_substituter(tweet)

  if freshTweet.length > 140
    freshTweet[0...140]
  else
    freshTweet
  end
end
