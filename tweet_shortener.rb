# Write your code here.

def dictionary(word)
 dic = {"hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "Hello" => "hi",
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "Four" => "4",
    "For" => "4",
    "Be" => "b",
    "You" => "u",
    "At" => "@",
    "and" => "&"
  }
  dic[word] 
end

def word_substituter(string)
  y = string.split(" ")
  new_string = []
  y.each do |w|
    if dictionary(w).nil?
      new_string << w 
    else
      new_string << dictionary(w)
    end
  end
new_string.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each{|twt| puts word_substituter(twt)}
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0...140]
  else
    word_substituter(tweet)
  end
end








#