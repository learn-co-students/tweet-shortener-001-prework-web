def dictionary
# Write your code here.
{"hello" => "hi",
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

def word_substituter(sentence)
  mydict = dictionary
  myarray = sentence.split(" ")
  count = 0
  new_array = myarray.collect {|word|
    hashpair = mydict.find { |key, value|
      key == word.downcase}
    if hashpair != nil
      word.replace(hashpair[1])
    else
      word
    end
  }

  new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect {|tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  newstr = word_substituter(tweet)
  if newstr.length > 140
    newstr = newstr[0..136] << "..."
  end
  newstr
end
