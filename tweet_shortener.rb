def word_substituter(abc)
  #string.to_s.sub("_"," ")).sub("_"," ").gsub(/\S+/, &:capitalize)
  (((abc.gsub!("to ", "2 ")).gsub!("be ", "b ")).gsub!("you ", "u ")).sub!("at ","@ ")
end

  #"Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!"

def bulk_tweet_shortener(abc)
  abc.collect do |i|
    puts ((((((i.gsub("to ", "2 ")).gsub("be ", "b ")).gsub("you ", "u ")).gsub(" at "," @ ")).sub("too", "2")).gsub(" and ", " & ")).gsub(" for ", " 4 ").gsub(" For ", " 4 ")
  end
end

def selective_tweet_shortener(abc)

  if abc.length>140
    return ((((((abc.gsub("to ", "2 ")).gsub("be ", "b ")).gsub("you ", "u ")).gsub(" at "," @ ")).sub("too", "2")).gsub(" and ", " & ")).gsub(" for ", " 4 ").gsub(" For ", " 4 ")
  else
    return abc
  end

end

def shortened_tweet_truncator(abc)
  xyz=((((((abc.gsub("to ", "2 ")).gsub("be ", "b ")).gsub("you ", "u ")).gsub(" at "," @ ")).sub("too", "2")).gsub(" and ", " & ")).gsub(" for ", " 4 ").gsub(" For ", " 4 ")
  z=xyz.length - 140
  if xyz.length<140
    return xyz+xyz[4..(140-xyz.length)]
  elsif z>0
    ttt=xyz[0...-z]
    return ttt
  else
    return xyz
  end
end































  # Write your code here.