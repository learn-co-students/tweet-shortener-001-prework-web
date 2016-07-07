require 'pry'
#{}"to, two, too" become '2'
#{}"for, four" become '4'
#'be' becomes 'b'
#'you' becomes 'u'
#{}"at" becomes "@"
#{}"and" becomes "&"
def dictionary
  hash = {"hello"=>"hi", "to"=>"2", "two"=>"2", "too"=>"2", "for"=>"4", "four"=>"4", "be"=> "b",
  "you"=>"u", "at"=>"@", "and"=>"&"}
end

def word_substituter(string)
  hash = dictionary #{"hello"=>"hi", "to"=>"2", "two"=>"2", "too"=>"2", "for"=>"4", "four"=>"4", "be"=>"b",
  #{}"you"=>"u", "at"=>"@", "and"=>"&"}
  things = []
  hash2 = hash.keys
 string2 = string.split(" ")
 string2.each do |x|
   if hash2.index("#{x.downcase}") != nil
    y = hash2.index("#{x.downcase}")
    x = hash[hash2[y]]
    things << x
   else
     things << x
   end
 end
  #hash.each { |k, v| string.gsub!(k, v) }
  #/[^|\s]#{k}[\s|$]/
  #
  return things.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(string)
 y = string.length
   if y >= 140
     word_substituter(string)
   else
     string
   end
end

def shortened_tweet_truncator(string)
  if selective_tweet_shortener(string).length > 140
    string.slice!(135..-1)
    string.insert(135, "(...)")
  else
    string
  end
end
