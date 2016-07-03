# Write your code here.
# Starting with the dictionary hash
def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => "2", "two" => "2", "too" => "2",
  "for" => "4", "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@", "and" => "&"
  }
end

def word_substituter(tweet) #here tweet is a string
  trigger_words = dictionary.keys
  tweet_words = tweet.split(" ")
  trigger_words.each do |trigger|
    index_array = []
    tweet_words.each_with_index do |word,index|
      if word == trigger
        index_array << index
      elsif word.downcase == trigger
        index_array << index
      end
    end
    index_array.each do |i|
      tweet_words[i] = dictionary[trigger]
    end
  end
  tweet_words.join(" ")
end

def bulk_tweet_shortener(tweets) #tweets ia an array of strings
  tweets.each do |tweet|
  puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet) #Is this a string or array?
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    shortened_tweet = word_substituter(tweet)
    if shortened_tweet.length > 140
      truncated_tweet = shortened_tweet[0...137] + "..."
    else
      shortened_tweet
    end
  elsif tweet.length <= 140
    tweet
  end
end
