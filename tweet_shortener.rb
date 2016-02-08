def dictionary

  words = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }

  words

end


def word_substituter(tweet)
  keys = dictionary.keys
  result = []

  tweet_words = tweet.split

  replace = nil
  tweet_words.each do |word|  

    i=0
    while i < keys.length
      if word.downcase == keys[i]
        result << dictionary[keys[i]]
        replace = true
      end

      i+=1
    end

    if replace == nil 
      result << word
    end

    replace = nil
  end

  new_tweet=result.join(" ")
  new_tweet 

end

def bulk_tweet_shortener(array_of_tweets)

  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else 
    return tweet
  end

end

def shortened_tweet_truncator(tweet)

  phrase = selective_tweet_shortener(tweet)
  if phrase.length > 140
    new_tweet = phrase[0..136]
    new_tweet << "..."

    return new_tweet
  else 
    selective_tweet_shortener(tweet)
  end

end
