require 'pry'
# Write your code here.
def dictionary
  #code
  { "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end



def word_substituter(string)
  tweet_array = string.split
  dict = dictionary
  tweet_array.each do |x|
    dict.each do |word, replacement|
      if x.downcase.strip.gsub(/\W+/,"") == word
        x.gsub!(/#{word}/i,replacement)
      end
    end
  end
  tweet_string = tweet_array.join(" ")
  tweet_string
end


def bulk_tweet_shortener(array)
  #code
  array.each do |x|
    puts word_substituter(x)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end



def shortened_tweet_truncator(tweet)
  shorty = word_substituter(tweet)
  if shorty.length > 140
    "#{shorty[1..137]}..."
  else
    shorty
  end
end


