# Write your code here.
def dictionary
  words2sub = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
    }
end

# replaces long words with their expected short form
def word_substituter(tweet)
  tweet_arr = tweet.split(" ")
  dictionary.keys.each do |i|
    tweet_arr.map! { |x| x.downcase == i ? dictionary[i] : x }
  end
  tweet_arr.join(" ")
end

# shortens each tweet and prints the results
def bulk_tweet_shortener(tweets)
  tweets.each do |i|
    puts word_substituter(i)
  end
end

# shortens tweets that are more than 140 characters
def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

# truncates tweets over 140 characters after shortening
def shortened_tweet_truncator(tweet)
  short = word_substituter(tweet)
  if short.length > 140
    short[0...140]
  else
    short
  end
end

tweets = [
  "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
  "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
  ]

tweet1 = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"

shortened_tweet_truncator(tweet1)