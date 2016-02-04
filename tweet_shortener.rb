# Write your code here.
def word_substituter(string)

array = []
string.split.collect do|e|
  array << e
    if(dictionary.keys.include?(e)==true)
    array.pop
    array << dictionary[e]
    end 
  end
array.join(' ')
end


def selective_tweet_shortener(string)
  phrase=string

  if string.size>140
  phrase=word_substituter(string)

      #word_substituter(string).slice(0..139)
  end
  phrase
end
def shortened_tweet_truncator(string)
  phrase=string

  if selective_tweet_shortener(string).size>140
  phrase=selective_tweet_shortener(string).slice(0..139)
      #word_substituter(string).slice(0..139)
  end
  phrase
  
end

def dictionary
words = {
  "hello"=>"hi", "Hello"=>"Hi",
  "two"=>"2", "to"=>"2", "too"=>"2", "Two"=>"2", "To"=>"2", "Too"=>"2",
  "for"=>"4", "four"=>"4", "For"=>"4", "Four"=>"4",
  "be"=>"b", "Be"=>"B",
  "you"=>"u", "You"=> "U",
  "at"=>"@",
  "and"=>"&"
}
words
end
def bulk_tweet_shortener(array)
array.each do |e| 
  puts word_substituter(e)
  end

end

word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")