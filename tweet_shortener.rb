# Write your code here.
def dictionary(tweetword)
  words = {hello: 'hi', to: '2', two: '2', too: '2', for: '4', four: '4', be: 'b', you: 'u', at: "@", and: "&"}
  words.each do |x,y|
    if x.to_s == tweetword.downcase
      tweetword = words[x]
    end
  end
  return tweetword
end

def word_substituter(tweet)
tweet_split_array = tweet.split(" ")
tweet_split_array.each do |x|
  tweet_split_array[tweet_split_array.index(x)] = dictionary(x)
end
 tweet = tweet_split_array.join(" ")
end

def bulk_tweet_shortener(tonsotweets)
  tonsotweets.each do |chirps|
    puts word_substituter(chirps)
  end
end

def selective_tweet_shortener(checktweet)
  if checktweet.length <= 140
    return checktweet
  else
    word_substituter(checktweet)
  end
end

def shortened_tweet_truncator(trunk)
  if trunk.length >= 130
    word_substituter(trunk)
  end
  if trunk.length >= 140
    trunk = "#{trunk[0..136]}..."
end
return trunk
end
