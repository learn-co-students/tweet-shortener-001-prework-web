# Write your code here.
def dictionary(word)
new_value = word
test = word.downcase
hash = {
    hello: 'hi', to: '2', two: '2', too: '2', for: '4', four: '4', be: 'b', you: 'u', at: "@", and: "&"
}
    hash.each do |k,v|
        if test == k.to_s
            new_value = hash.values_at(k)
        end
    end
new_value
end

def word_substituter(tweet)
    array =[]
    output = ""
    array = tweet.split(" ")
    array.each_index do |x|
        array[x] = dictionary(array[x])
    end
    array.join(" ")
end

def bulk_tweet_shortener(array)
    array.each do |x|
        puts word_substituter(x)
    end
end

def selective_tweet_shortener(string)
    if string.length > 140
        string = word_substituter(string)
    end
    string
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
        tweet = tweet[0..136] + "..."
    end
    tweet
end