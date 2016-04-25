# Write your code here.
def word_substituter(sentence)
  return sentence.gsub(" to ", " 2 ").gsub(" be "," b ").gsub(" at"," @").gsub(" you "," u ").gsub(" and "," & ").gsub(" too ", " 2 ").gsub(" for "," 4 ").gsub("For ", "4 ").gsub("hello","hi")
end

def bulk_tweet_shortener(sentence_array)
	sentence_array.each do |sentence|
		puts word_substituter(sentence)
	end
end

def selective_tweet_shortener(sentence)
	if sentence.chars.count > 140
		return word_substituter(sentence)
	else
		return sentence
	end
end

def truncate(string, max)
  string.length > max ? "#{string[0...max]}..." : string
end

def shortened_tweet_truncator(sentence)
	return truncate(word_substituter(sentence), 137)
end
