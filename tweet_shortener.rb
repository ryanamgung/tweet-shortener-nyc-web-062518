# Write your code here.
def dictionary
 {
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
  array = tweet.split(" ")
  bad_words = dictionary.keys
  array.map do |word|
    bad_words.map do |compare|
      if word.downcase == compare
        word = dictionary[word.downcase]
      end
    end
  end
  array.join(" ")
  
end