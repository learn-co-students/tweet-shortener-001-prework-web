# Write your code here.
def dictionary
dictionary = {"hello" => "hi",
              "to" => "2",
              "two" => "2",
              "too" => "2",
              "for" => "4",
              "For" => "4",
              "four" => "4",
              "be" => "b",
              "you" => "u",
              "at" => "@",
              "and" => "&"}
end

def word_substituter(tweet)
  tweet_array =[]
  tweet_array = tweet.split(" ")
  tweet_array.each_with_index do |word,index|
    if dictionary.keys.include?(word)
      tweet_array.insert(index,dictionary[word])
      tweet_array.delete_at(index + 1)
    end
  end
  output_tweet = ""
  output_tweet = tweet_array.join(" ")
  puts output_tweet
  output_tweet
end




def bulk_tweet_shortener(tweet)
  tweet.each do |string|
    word_substituter(string)
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
  new_tweet = ""
  new_tweet = word_substituter(tweet)
  if new_tweet.length > 140
    new_tweet = new_tweet[0..139]
  else
    new_tweet
  end
end
