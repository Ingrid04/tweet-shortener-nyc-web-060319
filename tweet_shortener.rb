def dictionary
  convert = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |phrase|
    puts word_substituter(phrase)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140  
    word_substituter(tweet)
  else 
    tweet 
  end 
end 


def shortened_tweet_truncator(tweet)
    tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140 
    tweet[0..136] + "..."
  else
    tweet
  end
end

