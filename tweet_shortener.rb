# Write your code here.

      $dict = {
              "hello" => "hi",
              "too" => "2",
              "to" => "2",
              "two" =>"2",
              "four" => "4",
              "for" => "4",
              "be" => "b",
              "you" => "u",
              "at" => "@",
              "and" => "&" }


def word_substituter (tweet)
  splittedtweet= tweet.split(' ')
  splittedtweet.each do |x|
    $dict.each_key do |abbrev|
      if x.downcase == abbrev.downcase
        splittedtweet[splittedtweet.find_index(x)]= $dict[abbrev.downcase]
      end
    end
  end
  splittedtweet =splittedtweet.flatten
  flattentweet= splittedtweet.join(" ")
  return flattentweet

end


def bulk_tweet_shortener (arr_of_tweets)
  arr_of_tweets.each do |x|
    x=word_substituter(x)
    puts x
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
    tweet=word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length>140
    tweet=word_substituter(tweet)
    if tweet.length>140
      tweet=tweet[0..136]
      tweet=tweet+"..."
    end
  else
    tweet
  end
end

b = "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."

word_substituter(b)
