# Write your code here.

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "For" => "4",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(string)
  string = string.split
  new_array = []
  array = dictionary.keys
  string.each do |word|
    if array.include?(word)
      new_array << dictionary[word]
    else
      new_array << word
      end
    end
  new_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.collect do |tweet|
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
     word_substituter(tweet)
      if tweet.length > 140
        tweet = tweet[0..136]
        tweet+="..."
        tweet
      else
        tweet
      end
    else
       tweet
    end
  tweet
end

test = ["This is a short tweet, no need to shortcut it","Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!im going to miss you all you know that right. Belive me rihgt now", "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"]
puts shortened_tweet_truncator(test)
