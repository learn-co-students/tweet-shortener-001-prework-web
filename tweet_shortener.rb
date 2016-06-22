# Write your code here.
require 'pry'
def dictionary
  {
    :hello => "hi",
    :to => "2",
    :too => "2",
    :two => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
  
end

def word_substituter(string)
#   copy_string = string.split(" ")
#   dic_arr = dictionary.keys
#   dic_arr.each do |element|
#     #binding.pry
#     copy_string.each do |word|
#       #binding.pry
#       if word == element.to_s
#         #binding.pry
#         string[word] = dictionary[element]
#         #binding.pry
#       end
#     end

#   end
# string
string_arr = string.split(" ")
dictionary.keys.each do |key|
  string_arr.map! {|word| word.downcase == key.to_s ? dictionary[key] : word}
end
string_arr.join(" ")
  
end

def bulk_tweet_shortener(array)
  array.each do |tweets|
    puts word_substituter(tweets)
  end 
end

def selective_tweet_shortener(string)
  if string.length < 140
    string
  else
    word_substituter(string)
  end 
end

def shortened_tweet_truncator(string)
  if string.length <140
    string
  elsif string.length > 140
    string = word_substituter(string)
    new_string = string[0..136] + "..."
  end
end



