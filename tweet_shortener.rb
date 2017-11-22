# Write your code here.

def dictionary
  {
    "hello" => "hi",
    "Hello" => "Hi",
    "to" => "2",
    "To" => "2",
    "two" => "2",
    "Two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "Four" => "4",
    "be" => "b",
    "Be" => "b",
    "you" => "u",
    "You" => "u",
    "at" => "@",
    "At" => "@",
    "and" => "&",
    "And" => "&"
  }
end


def word_substituter(tweet)
  tweet_array = tweet.split(" ").collect do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else word
    end
  end
  #return the string
  tweet_array.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    shortened = word_substituter(tweet)
    if shortened.length > 140 
      return shortened[0,140]
    else
      return shortened
    end
  else
    return tweet
  end
end


=begin
def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.collect do |word|
    puts "We are now looking at #{word}"
    dictionary.each do |long,short|
      puts "Does #{word} equal #{long}?"
      word = short if word == long
    end
  end
  #tweet_array.join(" ")
end
=end

tweet_one = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
puts word_substituter(tweet_one)[2]