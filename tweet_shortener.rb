def dictionary
  dictionary_hash = {
    "hello" => 'hi',
    "to, two, too" => '2',
    "for, For, four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
  return dictionary_hash
end

def word_substituter(org_tweet_str)
  original_tweet_array = org_tweet_str.split(" ")

  new_tweet_array = []

  original_tweet_array.each do |current_word|

    current_word_down = current_word.downcase

    temp_word = nil

    dictionary.each do |old_word, new_word|

      key_arr = old_word.split(", ")

      key_arr.each do |key|

        if current_word_down == key
          new_tweet_array.push(new_word)
          temp_word = current_word
        end

      end

    end
    if temp_word != current_word
      new_tweet_array.push(current_word)
    end


  end
  new_tweet_string = new_tweet_array.join(" ")
  return new_tweet_string
end


def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet_array|
    puts word_substituter(tweet_array)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length < 140
    return tweet
  else
    return word_substituter(tweet)
  end
end


def shortened_tweet_truncator(tweet)
  #add elipsis " ..." if too long after substitution
  new_arr = selective_tweet_shortener(tweet)

  if new_arr.length > 140
    final_tweet = new_arr[0..136] + "..."
  else
    return new_arr
  end
end
