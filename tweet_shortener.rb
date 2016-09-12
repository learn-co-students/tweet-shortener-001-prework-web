def dictionary
  dict = {
    "hello" => "hi",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4"
  }
end

def word_substituter(og_tweet)
  tweet_array = og_tweet.split(" ")
  tweet_array.each_with_index do |word, i|
    dictionary.each do |unsub_wrd, sub_wrd|
      if word.downcase == unsub_wrd
        tweet_array[i] = sub_wrd
      end
    end
  end
  new_tweet = tweet_array.join(" ")
  new_tweet
end

def bulk_tweet_shortener(og_tweets)
  og_tweets.each{|og_tweet| puts word_substituter(og_tweet)}
end

def selective_tweet_shortener(og_tweet)
  if og_tweet.length > 140
    new_tweet = word_substituter(og_tweet)
  else
    new_tweet = og_tweet
  end
  new_tweet
end

def shortened_tweet_truncator(og_tweet)
  untrunc_tweet = word_substituter(og_tweet)
  if untrunc_tweet.length > 140
    new_tweet = untrunc_tweet.slice(0..136).concat("...")
  else
    new_tweet = untrunc_tweet
  end
  new_tweet
end
