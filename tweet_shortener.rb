def dictionary 
  word_sub = {
    'hello' => 'hi',
    'to' => '2',
    'two' =>'2',
    'too' => '2',
    'four' =>'4',
    'for' =>'4',
    'be' => 'b',
    'you'=>'u',
    'at' =>'@',
    'and'=>'&'
  }

end

def word_substituter(tweet)
  converted_string = []
  tweet_arr = tweet.split(' ')
    tweet_arr.each do |word|
      if dictionary.keys.include?(word.downcase)
         converted_string << dictionary[word.downcase]
      else
        converted_string << word
      end
    end
  converted_string.join(' ')
end

# tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, For you know what I mean? Tweeting is super fun you guys!!!!"
# puts word_substituter(tweet)

def bulk_tweet_shortener(tweet_array)
    tweet_array.each do |arr|
      string_tweet = arr
      puts word_substituter(string_tweet)
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
  word = word_substituter(tweet)
  if word.length <= 140
      word
  else
    word[0..136] + '...'
  end

end