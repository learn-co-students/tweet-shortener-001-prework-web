def dictionary
    hash = {
        "hello" => "hi",
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
    tweet_array = tweet.split(" ") #convert string to array
    orig_words = dictionary.keys #grab all the keys of the hash
    hash = dictionary
    index = 0
    while index < tweet_array.length
        if hash.include?(tweet_array[index].downcase)
            tweet_array[index] = hash[tweet_array[index].downcase]
        end
        index += 1
    end
    new_tweet = tweet_array.join(" ") #convert array back to string
    new_tweet
end


def bulk_tweet_shortener(tweets)
    tweets.each do |tweet| #iterate over each tweet
        puts word_substituter(tweet) #uses word_substituter to change tweet
    end
end


def selective_tweet_shortener(tweet)
    if tweet.length > 140 #if tweet is 140+ characters
        word_substituter(tweet) #use word_substituter
    else
        puts tweet
        return tweet
    end
end


def shortened_tweet_truncator(tweet)
    new_tweet = tweet
    if tweet.length < 140 #if tweet is under 140 characters
        puts tweet #keeps original tweet
    else
        new_tweet = word_substituter(tweet) #if tweet is 140+ characters, use word_substituer
        if new_tweet.length > 140 #if it's still 140+ characters
            new_tweet = "#{new_tweet[0..136]}..." #truncate tweet with ellipsis 
        else
            puts new_tweet
        end
    end
    return new_tweet
end