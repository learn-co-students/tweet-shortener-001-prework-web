# Write your code here.
def dictionary
  dictionary = { "hello" => "hi",
                 "to" => "2", 
                 "two" => "2", 
                 "too" => "2",
                 "for" => "4", 
                 "four" => "4",
                 "be" => "b",
                 "you" => "u",
                 "at" => "@",
                 "and" => "&" }
  dictionary
end

def word_substituter(tweet)
  array = tweet.split(" ")
  sub = []
  array.each do |word|
      if dictionary.keys.include?(word.downcase)
        sub << dictionary[word.downcase]
      else
        sub << word
      end
  end
  sub.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    xform_tweet = word_substituter(tweet)
    puts xform_tweet
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  elsif tweet.length <= 140
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  xform = word_substituter(tweet)
  if xform.length > 140
    xform[139] = "..."
    xform.slice(0..139)
  else
    xform
  end
end




