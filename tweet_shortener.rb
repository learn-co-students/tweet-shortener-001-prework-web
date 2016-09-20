def dictionary 
  dictionary = {
    "hello"=>"hi","to"=>2,"two"=>2,"too"=>"2","for"=>4,
    "four"=>"4", "for"=>"4","be"=>"b","you"=>"u","at"=>"@","and"=>"&"
    }
end

# for every word in the tweet, 
# if it's contained in any of the keys
def word_substituter(tweet)
  words = tweet.split(" ")
  words.each_with_index do |word, index|
    if dictionary.keys.include?(word.downcase)
      words.delete_at(index) && words.insert(index, dictionary[word.downcase])
    end
  end
  return words.join(" ")
end 

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.chars.length > 140 ? word_substituter(tweet) : tweet
end 

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  shortened_tweet.chars.length > 140 ? shortened_tweet[0...140] : shortened_tweet
end 

