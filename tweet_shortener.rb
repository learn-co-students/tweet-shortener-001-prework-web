Dictionary = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

def word_substituter(string)
  string.split.map {|word|
    if Dictionary.has_key?(word)
    Dictionary[word]
  else
    word
  end
}.join(" ")
end

def bulk_tweet_shortener(array)
  array.map do |element|
    puts word_substituter(element)
  end
end

def selective_tweet_shortener(tweet)
tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
      word_substituter(tweet)[0..136] + "..."
    elsif word_substituter(tweet).length <= 140
      word_substituter(tweet)
    end
end
