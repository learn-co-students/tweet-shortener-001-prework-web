def dictionary(word)
  dic = {"HELLO" => "hi",
        "TO" => "2", "TWO" => "2", "TOO" => "2",
        "FOR" => "4", "FOUR" => "4",
        "BE" => "b",
        "YOU" => "u",
        "AT" => "@",
        "AND" => "&"
        }

  short_word = "xxx"

  dic.each do |key, value|
    if word.upcase == key
       short_word = dic[key]
    end
  end

  if short_word != "xxx"
    short_word
  else
    word
  end
end

#puts "    not matching"
#puts dictionary("for")
#puts "    matching"
#puts dictionary("FOR")
#puts "    capitalized"
#puts dictionary("For")

tweet_one = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
tweet_four = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"

def word_substituter(tweet)
  array = tweet.split
  short_tweet_arr = []

  array.each do |word|
    short_tweet_arr << dictionary(word)
  end

  short_tweet_arr.join(" ")

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

  if tweet.length > 140
    short_tweet = word_substituter(tweet)
      if short_tweet.length > 140
        return short_tweet[0..136] + "..."
      else
        short_tweet
      end
  else
    tweet
  end
end

#puts "    Tweet One: "
#puts shortened_tweet_truncator(tweet_one)
#puts shortened_tweet_truncator(tweet_one).length

#puts "    Tweet Four: "
#puts shortened_tweet_truncator(tweet_four)
#puts shortened_tweet_truncator(tweet_four).length
