# Write your code here.
def dictionary
  {
 "hello" => 'hi',
["to, two, too"] => '2',
["for, four"] => '4',
'be' => 'b',
'you' => 'u',
"at" => "@" ,
"and" => "&"
    }
end
def word_substituter(string)
    results = ""
    string.split.each do |each_word|
    keys = dictionary.keys.flatten.join(",").split(",")
        if    keys.include?(each_word) && each_word == "for" || each_word == "four" || each_word == "Four" || each_word == "For"
              results << dictionary[["for, four"]] + " "
        elsif keys.include?(each_word) && each_word == "to" || each_word == "two" || each_word == "too" || each_word == "To" || each_word == "Two" || each_word == "Too"
              results << dictionary[["to, two, too"]] + " "
        elsif keys.include?(each_word)
              results << dictionary[each_word] + " "
        else
              results << each_word + " "
        end
    end
    results.strip
end

def bulk_tweet_shortener(array)
  array.each{|each_array| puts word_substituter(each_array)}
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  word_substituter(tweet).length > 140 ? tweet[0..139] : selective_tweet_shortener(tweet)
end

