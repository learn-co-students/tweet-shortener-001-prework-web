# Write your code here.
require 'pry'

def dictionary
	{
      :hello => 'hi',
	  :to => '2',
	  :two => '2',
	  :too => '2', 
	  :for => '4',
	  :four => '2',
	  :be => 'b',
	  :you => 'u',
	  :at => '@',
	  :and => '&',
    }
end

def word_substituter(string)
   # array_string = string.split
   # dictionary_keys_array = dictionary.keys
   # final_arry = []
   # i = 0
   # while array_string.length > i
   #     if dictionary_keys_array.any?{|key| key.to_s == array_string[i]} 
   #         final_arry <<  dictionary[array_string[i].to_sym]
   #     else
   #         final_arry << array_string[i]
   #     end
   #     i += 1
   #  end   
   #  final_arry.join(" ")

  words = string.split
  new_words = words.map do |word|
    if dictionary.keys.include?(word.downcase.to_sym)
      dictionary[word.downcase.to_sym]
    else
      word
    end
  end
  new_words.join(" ")

end

def bulk_tweet_shortener(array)
	array.each {|bluk| 
		puts word_substituter(bluk)
	 }
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140 && !(tweet.length < 130)
      final_tweet = "#{tweet[0..137]}..."
    else
      	tweet
   end
end

def shortened_tweet_truncator(tweet)
	short_tweet = word_substituter(tweet)
	if short_tweet.length > 139
	final_tweet = "#{tweet[0...137]}..."
   else
   	 short_tweet
   end
end

# binding.pry