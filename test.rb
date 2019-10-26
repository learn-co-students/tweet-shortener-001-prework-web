require 'pry'

def dictionary
    dictionary = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweet)
    tweet_array = tweet.split.map do |word|
        if dictionary.keys.include?(word.downcase)
                word = dictionary[word.downcase]
        else
            word
        end
    end
    puts tweet_array.join(" ")
end

=begin
def bulk_tweet_shortener(tweet_array)
    tweet_array.each do |tweet|
        puts word_substituter(tweet)
    end
end
=end
def shortened_tweet_truncator(tweet)
    shortened = word_substituter(tweet)
    if shortened.length > 140
        shortened[0..134] + "(...)"
    else
        shortened
    end
end

tweet = "Hello two out of example tweets for u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. for real, u guys. for real. nanan for four you"
shortened_tweet_truncator(tweet)
