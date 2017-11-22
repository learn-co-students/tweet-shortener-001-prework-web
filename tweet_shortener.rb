# Write your code here.
require 'pry'

def dictionary  
  dict =  {
    "hello" => 'hi',
    "to, two, too" =>'2',
    "for, four" =>'4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&",
  }
  return dict
end

def word_substituter (tweet)
  tweet_array = tweet.split(" ")
  dict = dictionary
  dict_keys = dict.keys
  flatkeys = dict_keys.flatten
  matches = tweet_array & flatkeys
  new_tweet = []
  tweet_array.each do |word|
    if ["two","to","too"].include? word
      new_tweet << "2"
    elsif ["for","four", "For"].include? word 
      new_tweet << "4"
    elsif matches.include? word
      new_tweet << dict["#{word}"]
    else
      new_tweet<< word
    end
  end
  return new_tweet.join(" ")
end

def bulk_tweet_shortener (tweets)
  tweets.each do |x|
    returned = word_substituter(x)
    puts returned
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else return tweet
  end
end 

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    shorteneditem = tweet[0...139]
    shorteneditem[137...139] = "..."
    return shorteneditem
  else
    return tweet
  end
end
