# Write your code here.
def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(str)
	arr = str.split(" ")
	arr.each_with_index do |word, index|
		if dictionary.keys.include?(word.downcase)
			arr[index] = dictionary[word.downcase]
		end
	end
	arr.join(" ")
end

def bulk_tweet_shortener(arr)
	arr.each do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(str)
  if str.length > 140
    word_substituter(str)
  else
    str
  end
end

def shortened_tweet_truncator(str)
  if word_substituter(str).length > 140
    str[0...137] + "..."
  else
    word_substituter(str)
  end
end
