# Write your code here.

def dictionary(word)

  hash = {}
  hash["hello"] = "hi"
  hash['to'] = '2'
  hash['two'] = '2'
  hash['too'] = '2'
  hash['four'] = '4'
  hash['for'] = '4'
  hash['be'] = 'b'
  hash['you'] = 'u'
  hash['at'] = '@'
  hash['and'] = '&'
  return hash[word.downcase] if hash.keys.include?(word.downcase)
  return word
end

def word_substituter(tweet)
  tweet_to_array = tweet.split(' ')
  tweet_to_array.map do |word|
    word.gsub!(word, dictionary(word))
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  for tweet in tweets 
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return word_substituter(tweet) if tweet.length > 140
  tweet
end

def shortened_tweet_truncator(tweet)
  return tweet if word_substituter(tweet).length < 140
  tweet = tweet[0..136] if word_substituter(tweet).length > 140
  tweet += "..."
  tweet
end
