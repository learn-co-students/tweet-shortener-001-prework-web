require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "two" => "2",
    "too" => "2",
    "to" => "2",
    "for" => "4",
    "four" => "4",
    'be' => "b",
    'you' => "u",
    "at" => "@" ,
    "and" => "&"
  }
end

def word_substituter(tweet)
  words_to_replace = dictionary.keys.flatten
  tweet_array = tweet.split(" ")
  shortened_tweet = []
  tweet_array.each do |i|
    if words_to_replace.include?(i)
      shortened_tweet << dictionary[i]
    else
      shortened_tweet << i
    end
  end
  shortened_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  words_to_replace = dictionary.keys.flatten
  tweets.each do |i|
    tweet_array = i.split(" ")
    shortened_tweet = []
    tweet_array.each do |word|
      if words_to_replace.include?(word.downcase) 
        shortened_tweet << dictionary[word.downcase]
      else
        shortened_tweet << word
      end
    end
    puts shortened_tweet.join(" ")
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    words_to_replace = dictionary.keys.flatten
    tweet_array = tweet.split(" ")
    shortened_tweet = []
    tweet_array.each do |word|
      if words_to_replace.include?(word.downcase) 
        shortened_tweet << dictionary[word.downcase]
      else
        shortened_tweet << word
      end
    end
    shortened_tweet.join(" ")
  else 
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    words_to_replace = dictionary.keys.flatten
    tweet_array = tweet.split(" ")
    shortened_tweet = []
    tweet_array.each do |word|
      if words_to_replace.include?(word.downcase) 
        shortened_tweet << dictionary[word.downcase]
      else
        shortened_tweet << word
      end
    end
      shortened_tweet = shortened_tweet.join(" ")
    if shortened_tweet.size > 140
      shortened_tweet = "#{shortened_tweet[(0..136)]}..."
    end
  else 
    tweet
  end
end
