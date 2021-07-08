# Write your code here.
require 'pry'

def dictionary
 dictionary = {
  "hello" => "hi",
   "to" => "2", 
   "too" => "2",
   "two" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" =>"@", 
   "and" => "&"
 }
 end

 def word_substituter(string)
    array = []
    array << string.split.collect do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase] #dictionary doesn't include the capitalized version of "for"
      else 
        word
      end
    end
    array.join(" ")
  end

  def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
      puts word_substituter(tweet)
    end
  end
  
def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet[0..139] 
  else
    tweet
  end
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end