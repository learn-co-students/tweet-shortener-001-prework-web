def dictionary
  substitutes = {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  array = string.split
  array.each_with_index do |words, index|
    dictionary.each do |key, value|
      if key.split(", ").include?(words) || key.split(", ").map {|string| string.capitalize}.include?(words)
        array[index] = value
      end
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweets)
  if tweets.chars.length <= 140
    tweets
  else
    word_substituter(tweets)
  end
end

def shortened_tweet_truncator(tweets)
  if word_substituter(tweets).chars.length <= 140
    tweets
  else
    tweets.chars[0...137].join + "..."
  end
end
