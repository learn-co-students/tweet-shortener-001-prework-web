require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "for" => "4",
    "four" => "4",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  substitutes = dictionary
  array = string.split(" ")
  word_test = substitutes.keys
  final_array = []

  array.collect do |word|
      lowercase_words = word.downcase
      if word_test.include?(lowercase_words)
        word = substitutes[lowercase_words]
      else
        word
      end
      final_array << word
    
  end
string = final_array.join(" ")
string

end


def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.collect do |tweet|
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  if tweet.length > 140
    tweet = tweet[0..136]
    tweet << "..."
  end
  tweet
end
