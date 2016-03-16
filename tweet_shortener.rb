# Write your code here.
def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(tweet)
  change_hash = dictionary
  array = tweet.split(" ")

  array.each_with_index do |word, index|
    change_hash.each do |before, after|
      if word == before
        array[index] = after
      elsif word == before.capitalize
        array[index] = after.capitalize
      end
    end
  end

  new_tweet = array.join(" ")
  new_tweet
end

def bulk_tweet_shortener(array)
  array.each do
    |tweet| puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_tweet = tweet[0..136]
    new_tweet << "..."
    new_tweet
  else
    tweet
  end
end

