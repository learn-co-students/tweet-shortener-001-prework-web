require 'pry'
#Contains the words-to-be-substituted and their substitutes.
#The original words from the list below will be the keys. 
#The substitute of a particular word becomes that key's value. 
#You will use this hash in later methods to look up words and 
#replace them with their substitues.
def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
end

#Takes in a string of a tweet as an argument and shortens that
#string based on the allowed substitutes.
def word_substituter(tweet)
  short_tweet = tweet.split.map do |word|
    if dictionary.keys.include?(word)
      dictionary[word]
    else
      word
    end
  end
  short_tweet.join(" ")
end

#!!!!!!NOTE: final two 'For' in last tweet array were not being subbed w/ '4'
#("For real, u guys. For real.") Had to add a new "For" key to dictionary.

#Takes in an array of tweets, iterates over them, shortens them,
#and puts out the results to the screen.
def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    #binding.pry
    puts word_substituter(tweet)
  end
end

#Only does the substitutions if the tweet is longer than 140 characters. 
#If the tweet is 140 characters or shorter, just return the original tweet.
def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

#Truncates the tweet to 140 characters with an ellipsis (...) if it's
#still too long after substitution.
def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length <= 140
    word_substituter(tweet)
  else
  word_substituter(tweet)[0..136] << "..." 
  end
end