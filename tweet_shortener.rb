def dictionary
  dictionary = {"hello" => 'hi', "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  sp = tweet.split(" ")
  dictionary.each {|k, v|
    sp.collect! {|word|
        if k == word || k.capitalize == word
        word = v
        else
        word
        end
  }
  }
  sp.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.collect! {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 270
      puts "You need to lower the characters count to less than 270"
  elsif selective_tweet_shortener(tweet).length > 140
    tw_sp_arr = selective_tweet_shortener(tweet).scan(/.{1,137}/)
    tw_sp_arr[0] = tw_sp_arr[0] + "..."
  else
    tweet
  end
end

