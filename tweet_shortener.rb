def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => 2,
    "two" => 2,
    "too" => 2,
    "for" => 4,
    "four" => 4,
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(str)
  short = []
  str.split(' ').map do |x|
    if(dictionary.keys.include? x.downcase)
      short << dictionary[x.downcase]
    else
      short << x
    end
  end
  short.join(' ')
end

def bulk_tweet_shortener(arr)
  arr.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if(tweet.length > 140)
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if(tweet.length > 140)
    tweet = tweet.slice(0,137) + "..."
  end
  tweet
end