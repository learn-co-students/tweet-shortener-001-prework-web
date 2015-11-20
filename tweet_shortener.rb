def dictionary(word)
  substitute_words = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }

  new_word = nil

  array_of_keys = substitute_words.keys

  if array_of_keys.include?(word.downcase)
    new_word = substitute_words[word.downcase]
  else
    new_word = word
  end

  new_word
end

def word_substituter(string)
  tweet_as_array = string.split

  #cycle through each word in array to substitute certaint words 
  index = tweet_as_array.length - 1

  until index < 0
    substitute_word = dictionary(tweet_as_array[index])
    tweet_as_array[index] = substitute_word
    index -= 1
  end

  #convert array back into one string
  tweet_as_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)

  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    tweet_as_array = string.split

    #cycle through each word in array to substitute certaint words 
    index = tweet_as_array.length - 1

    until index < 0
      substitute_word = dictionary(tweet_as_array[index])
      tweet_as_array[index] = substitute_word
      index -= 1
    end

    #convert array back into one string
    tweet_as_array.join(" ")
  else
    return string
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    tweet_as_array = string.split

    #cycle through each word in array to substitute certaint words 
    index = tweet_as_array.length - 1

    until index < 0
      substitute_word = dictionary(tweet_as_array[index])
      tweet_as_array[index] = substitute_word
      index -= 1
    end

    #convert array back into one string
    shortened_tweet = tweet_as_array.join(" ")

    if shortened_tweet.length > 140
      #take the last three characters out and put three dots
      truncated_tweet = shortened_tweet.slice(0,137) + "..."
      return truncated_tweet
    end
  else
    return string
  end
end

