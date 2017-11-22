def dictionary(long_word)
  dictionary = {
    "HELLO" => "hi",
    "TO" => "2",
    "TWO" => "2",
    "TOO" => "2",
    "FOR" => "4",
    "FOUR" => "4",
    "BE" => "b",
    "YOU" => "u",
    "AT" => "@",
    "AND" => "&"
  }

  dictionary.has_key?(long_word.upcase) ? dictionary[long_word.upcase] : long_word
end

def word_substituter(tweet)
  tweet.split(" ").map { |word| dictionary(word) }.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet[0..136] + "..." : tweet
end