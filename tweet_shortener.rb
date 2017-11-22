# Write your code here.

Dictionary={"hello" => 'hi', "to" => '2', "two" => '2', "too" => '2', 
            "for" => '4', "four" => '4', 'be' => 'b', 'you' => 'u',
            "at" => "@", "and" => "&"}

Dic_Keys=Dictionary.keys

def word_substituter(tweet)
  tweet.split(" ").collect do |word|
    if Dic_Keys.include?(word.downcase)
      word=Dictionary[word.downcase]
    else word
    end
  end.join(" ") 
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts(word_substituter(tweet))
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
    word_substituter(tweet) 
  else tweet
  end
end


def shortened_tweet_truncator(tweet)
  short_tweet=selective_tweet_shortener(tweet)

  if short_tweet.length>140
    short_tweet=short_tweet[0..139]

    short_tweet[-3..-1]="..."
  end
  short_tweet
end


