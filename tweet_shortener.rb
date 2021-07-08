tweet = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"

def word_substituter(tweet)
  dictionary = {
      "hi" => ["hello"],
      "2" => ["to", "two", "too"],
      "4" => ['for', 'four'],
      "b" => ["be"],
      "u" => ['you'],
      '@' => ['at'],
      '&' => ["and"]

  }
    tweet = tweet.split(/ /)
    for i in 0...tweet.size
      dictionary.each do |replacer,  word|
        for a in 0...word.size
          if tweet[i].upcase == word[a].upcase 
            tweet[i] = replacer
          end
        end
      end
    end
  return tweet.join(" ")
end



def bulk_tweet_shortener(tweet)
for i in 0...tweet.size
puts word_substituter(tweet[i].to_s)
end
end


def selective_tweet_shortener(tweet)
   if tweet.size > 140
    return word_substituter(tweet)
  else 
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if tweet.size > 140
    tweet = "#{tweet[0..134]}(...)"
  end
  return tweet
end







