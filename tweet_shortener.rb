require "pry"
def dictionary
    {
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
    
end

def word_substituter(tweet)
    tweet.split.each do |word|
        if dictionary.has_key?(word.downcase)
           word.replace "#{dictionary[word.downcase]}"
        end
    end.join(" ")
end


def bulk_tweet_shortener(array)
    array.each do |tweet|
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
    if word_substituter(tweet).length > 140
        word_substituter(tweet)[0..136] + "..."
    else
    tweet
    end
end







