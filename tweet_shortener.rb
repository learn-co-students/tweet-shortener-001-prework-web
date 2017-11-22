# Write your code here.
def dictionary
  shortened = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"}
end


def word_substituter(tweet_string)
  shortened = dictionary
  # puts "shortened #{shortened}"
  # puts "#{tweet_string.include?(shortened)}"
  tweet_array = tweet_string.split
  tweet_array.collect do |array|
    shortened.collect do |original, substitute|
      if array.downcase.strip.gsub(".", "") == original
        array.downcase!
        # puts "array downcase #{array.downcase}"
        # puts "Original is #{original}: to be #{substitute}"
        array.gsub! original, substitute
        # puts "Array in if #{array}"
      end
    end
  end
  tweet_string = tweet_array.join(" ")
  return tweet_string
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |array|
    puts "#{word_substituter(array)}"
  end
end

# bulk_tweet_shortener(["For real, you guys. For real."])

def selective_tweet_shortener(tweet_string)
  tweet_string_length = tweet_string.length
  # puts "#{tweet_string_length}"
  if tweet_string_length > 140
    word_substituter(tweet_string)
  else
    return tweet_string
  end
end

def shortened_tweet_truncator(tweet_string)
  updated_tweet = selective_tweet_shortener(tweet_string)
  if updated_tweet.length > 140
    return updated_tweet[0..139]
  else
    return updated_tweet
  end
end