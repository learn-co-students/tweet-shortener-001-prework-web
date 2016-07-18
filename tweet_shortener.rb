# Write your code here.
require 'pry'
def dictionary
  {
   :hello => "hi",
   :to => "2",
   :too => "2",
   :two => "2",
   :four => "4",
   :for => "4",
   :For => "4",
   :be => "b",
   :you => "u",
   :at => "@",
   :and => "&"
  }
end
def word_substituter(string)
  #convert string to array
  array = string.split(" ")
  #iterate through the array and compare each word
  # with the shortcut in the dictionary hash
  array.collect! do |word|
    if dictionary.keys.include?(word.to_sym)
      word = dictionary[word.to_sym]
    else
      word = word
    end
  end
  array.join(" ")

end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    #binding.pry
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets)
  #binding.pry
  tweets.length > 140 ? word_substituter(tweets) : tweets
  # if tweets.length > 140
  #   word_substituter(tweets)
  # else
  #   tweets
  # end
end

def shortened_tweet_truncator(tweets)
  # if tweets.length > 140
  #   new_tweets = word_substituter(tweets)
  # else
  #   new_tweets = tweets
  # end
  # if new_tweets.length > 140
  #   new_tweets[0..139]
  # else
  #   new_tweets
  # end
  tweets.length > 140 ? word_substituter(tweets) : tweets
  word_substituter(tweets).length > 140 ? tweets[0..139] : tweets
end



