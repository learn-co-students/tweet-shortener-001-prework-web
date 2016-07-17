# Write your code here.

def dictionary
  hash = {
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
end

  # if tweet.length > 140
  #   tweet.update(tweet){|"hello"|"hi"}


  def word_substituter(tweet)
    dictionary.keys.each do |word|
      if dictionary.keys.include?(word)
        sub = dictionary[word]
        tweet.gsub!(/\b#{word}\b/i, sub)
      end
    end
    return tweet
  end

def bulk_tweet_shortener(tweets)
  tweets.each{ |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
      return tweet
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
    # if tweet.length > 140 || tweet.length == 140
  #   return tweet
  # # elsif tweet.length < 140
  # #   chop tweet.length down to 136 and add "..." to the end of it
  # #     then return tweet
  if word_substituter(tweet).length > 140
    tweet = tweet[0..136] + "..."
  end
  return tweet
end



