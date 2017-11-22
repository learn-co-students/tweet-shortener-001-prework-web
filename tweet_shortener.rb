def word_substituter(string)

  dictionary = {
      "hello" => "hi",
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

  str_array = string.split(" ")
  answer = []

  str_array.each do |word|
    if dictionary.include?(word.downcase)
      word = dictionary[word.downcase]
      answer << word
    else
      answer << word
    end
  end

    answer.join(" ")

end

def bulk_tweet_shortener(tweet_array)

  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweet)

  if tweet.split("").length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)

  if tweet.split("").length > 140
    short_tweet = word_substituter(tweet)
    if short_tweet.length > 140
      short_tweet[0..136] + "..."
    else
      short_tweet
    end
  else
    tweet
  end

end
