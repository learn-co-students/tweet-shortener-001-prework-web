def word_substituter(str)
  dictionary = {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
  str.split(" ").map{|w| dictionary.key?(w.downcase.to_sym)? dictionary[w.downcase.to_sym] : w}.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
    t = word_substituter(tweet)
    puts t
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  t = word_substituter(tweet)
  t.length > 140 ? "#{t[0..136]}...": t
end
