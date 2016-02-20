# Write your code here.

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  array = string.split(" ")
  new_array = []
  array.each do |x|
    if dictionary.keys.include?(x) == true
      new_array << dictionary.values_at(x)
    else
      new_array << x
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(array_of_strings)
  array_of_strings.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    new_string = string[0..139]
  else
    new_string = string
  end
  new_string
end

