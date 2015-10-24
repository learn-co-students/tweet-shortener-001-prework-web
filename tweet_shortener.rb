# Write your code here.

def dictionary
  substitutions = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
end

def word_substituter(tweet)
  dict = dictionary
  dict_keys = dict.keys
  return_tweet = tweet.split(" ")
  dict_keys.each do |sub|
    if tweet.downcase.include?(sub.to_s)
      while index = return_tweet.map(&:downcase).find_index(sub.to_s) and index != nil
        return_tweet[index] = dict[sub]
      end
    end
  end
  return_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if shorter_tweet = selective_tweet_shortener(tweet) and shorter_tweet.length > 140
    shorter_tweet = shorter_tweet[0..136] + "..."
  end
  shorter_tweet
end