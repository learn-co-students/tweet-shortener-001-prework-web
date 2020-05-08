def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  array = string.split(" ")
  newarray = []
  array.each do |word|
    if dictionary.keys.include?(word.downcase)
      newarray << dictionary[word.downcase]
    else
      newarray << word
    end
  end
  newarray.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  shortened = word_substituter(tweet)
  if shortened.length > 140
    shortened = shortened[0..136] + "..."
  end
  shortened
end