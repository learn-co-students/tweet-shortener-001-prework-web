require 'pry'

def mkdict
  { "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&" }
end

def word_substituter(tweet)
  array = tweet.split
  dictionary = mkdict
  array.each do |tword|
    dictionary.each do |word, replacement|
      if tword.downcase.strip.gsub(/\W+/,"") == word
        tword.gsub!(/#{word}/i,replacement)
      end
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
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
    "#{tweet[1..137]}..."
  else
    tweet
  end
end

#bulk_tweet_shortener(["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
#{}"OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
#{}"I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."])