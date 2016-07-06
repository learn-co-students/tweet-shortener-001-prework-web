# Write your code here.


require 'pry'

def word_substituter(sentence)
thedict = {
    ["hello"] => "hi",
    ["to","two","too"] => "2",
    ["for", "four"] => "4",
    ["be"] => "b",
    ["you"] => "u",
    ["at"] => "@",
    ["and"] => "&"
}
#puts thedict
counter = 0
sentence_array = sentence.split
sentence_array.each do |word|
    thedict.keys.each do |check|
        sample = word.downcase
        if check.include?(sample)
            sentence_array[counter] = thedict[check]
        end
    end
    counter += 1
    end
sentence_array.join(" ")
end

#puts dictionary("to")



def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
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
    short_tweet = selective_tweet_shortener(tweet)
    #binding.pry
    if short_tweet.length > 140
        return short_tweet[0..139]
    else
        return short_tweet
        end
    end


puts shortened_tweet_truncator("GUISEEEEE this is so fun! I'm tweeting 4 u guys & this tweet is SOOOO long it's gonna b way more than u would think twitter can handle, so shorten it up u know what I mean? I just can never tell how long 2 keep typing!").length





















