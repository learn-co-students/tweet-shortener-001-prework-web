# Write your code here.

def dictionary
	{"hello" => 'hi',
	"to, two, too" => '2', 
	"for, four" => '4',
	'be' => 'b',
	'you' => 'u',
	"at" => "@",
	"and" => "&"}
end


 
def word_substituter(string)
	
	new = string.split(" ")
	
	dictionary.each do |person, data|
 		
 	 		ind=0
			while ind < new.length 
				
				if person.downcase.include?(new[ind].downcase) && new[ind].downcase != "a"
					new[ind]=data
				end 
				ind+=1
			end 
		
		 
	end  
	  
	   new.join(" ")
end 

def bulk_tweet_shortener(array)
	array.each do |i|
		puts word_substituter(i)
		
	end 
	

end 


def selective_tweet_shortener(string)
	if string.length > 140
		return word_substituter(string)
	
	else 
	
		return string
	end 


end 

def shortened_tweet_truncator(string)
	new = word_substituter(string)
	if new.length > 140
	
		return new[0..134] + "(...)"
	else 
		return new 
	end 

end 



