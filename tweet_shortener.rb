def dictionary
  twitter_dictionary = {
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
end


def word_substituter(input_string)

  string_array = input_string.split(" ")
  string_array.collect! do |word|
    dictionary.has_key?(word.downcase)? word = dictionary[word.downcase] : word
  end

  input_string = string_array.join(" ")
  input_string

end

def bulk_tweet_shortener(tweet_array)

  tweet_array.each do |tweet|
    puts word_substituter(tweet)
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

   shortened_tweet = selective_tweet_shortener(tweet)
   if shortened_tweet.length > 140
     shortened_tweet[137..-1] = "..."
     (shortened_tweet.reverse[0..3] = "...").reverse
     puts shortened_tweet
     shortened_tweet
   else
     shortened_tweet
   end

end
