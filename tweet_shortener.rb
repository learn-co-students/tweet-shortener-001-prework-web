# Write your code here.



def word_substituter(string)
	
	dictionary = {
	hello: 'hi',
     to: '2' ,
    two: '2',
    too: '2',
    for: '4',
   four: '4',
     be: 'b',
    you: 'u',
     at: "@",
    and: "&",
}
	string_array = string.split(' ')
	string_array.map do |word|
		if dictionary[word.downcase.intern] != nil
			dictionary[word.downcase.intern]
		else 
			word
		end
	end.join(' ') 
end

def bulk_tweet_shortener(array_of_strings)
	dictionary = {
	hello: 'hi',
     to: '2' ,
    two: '2',
    too: '2',
    for: '4',
   four: '4',
     be: 'b',
    you: 'u',
     at: "@",
    and: "&",
}
	array_of_strings.each do |string|
		output = string.split(' ').map do |word|
		  if dictionary[word.downcase.intern] != nil
		  	
		  	dictionary[word.downcase.intern]
	  	else 
	  		word
	  	end
	  end.join(' ') 
	  puts output
  end
end

def selective_tweet_shortener(string)
	dictionary = {
	hello: 'hi',
     to: '2' ,
    two: '2',
    too: '2',
    for: '4',
   four: '4',
     be: 'b',
    you: 'u',
     at: "@",
    and: "&",
  }
  shortened = string
  if string.size > 140
	  shortened = string.split(' ').map do |word|
			if dictionary[word.downcase.intern] != nil
				dictionary[word.downcase.intern]
			else 
				word
			end
		end.join(' ') 
		if shortened.size > 140
			shortened[0..140]
		end
	end
	shortened
end
	
def shortened_tweet_truncator(string)
		dictionary = {
	hello: 'hi',
     to: '2' ,
    two: '2',
    too: '2',
    for: '4',
   four: '4',
     be: 'b',
    you: 'u',
     at: "@",
    and: "&",
  }
  shortened = string
  if string.size > 140
	  shortened = string.split(' ').map do |word|
			if dictionary[word.downcase.intern] != nil
				dictionary[word.downcase.intern]
			else 
				word
			end
		end.join(' ') 
		if shortened.size > 140
			shortened = shortened[0..139]
		end
	end
	shortened
end













