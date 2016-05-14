def dictionary
{
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

def word_substituter(tweet)
  # turn tweet into an array and go through each word
  # splitting using regex for punctuation works, but have to figure out how to
  # join the resulting array with the punctuation
  tweet.split(" ").each do |word|
    # compare each word in array against the keys in dictionary
    # when there is a match, replace word with its abbreviation
  	dictionary.each do |long_word, abbreviation|
  		if word.downcase == long_word
  			word.replace(abbreviation)
  		end
  	end
  end.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  # regular if/else
  # if tweet.length <= 140
  #   tweet
  # else
  #   word_substituter(tweet)
  # end

  # using 'unless'
  # unless tweet.length > 140
  #   tweet
  # else
  #   word_substituter(tweet)
  # end

  # using the ternary operator. Much cleaner
  # if_this_is_true ? do this : otherwise do this
  tweet.length <= 140 ? tweet : word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  shorter_tweet = word_substituter(tweet)
  if shorter_tweet.length > 140
    shorter_tweet[0..136] << "..."
  else
    shorter_tweet
  end
end
