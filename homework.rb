#Create a program to analyze a large block of text and report back on the frequency of each word in the text.
#a. Start by sorting the text into a hash where each word is a key with the word’s value being the amount of times it has been used in the block:
#example :{the: 10, john: 1, of: 15}


     my_text = "fizzbuzz,fizzbuzz,fizz,fizzbuzzzzz,buzzzzzzzzzzzz,buzz,
                buzzfizzz,buzzz,fizz,fizzbuzz,fizzbuzz,fizz,fizzbuzzzzz,
                buzzzzzzzzzzzz,buzz,buzzfizzz,buzzz,fizz,fizzbuzz,fizzbuzz,
                fizz,fizzbuzzzz,buzzzzzzzzzzzz,buzzz,buzzfizzz,buzzz,fizz,fizz"
                
     frequency_of_each_word = Hash.new(0)
    
     my_text.scan(/\w+/) do |words|
     frequency_of_each_word[words] = frequency_of_each_word[words] +1 

     end
     puts frequency_of_each_word


# > {"fizzbuzz"=>6, "fizz"=>7, "fizzbuzzzzz"=>2, "buzzzzzzzzzzzz"=>3, "buzz"=>2, "buzzfizzz"=>3, "buzzz"=>4, "fizzbuzzzz"=>1}


#return the word that has been used the most

     puts  "The word that has been used the most is :" , frequency_of_each_word.max_by {|k,v| v}[0]

# > The word that has been used the most is :
# > fizz


 

 #method using the .split 

    paragraph = "alone i lay on a wooden raft alone i stay in the dark alone i pray to survive 
                 alone i may not survive alone i look out the sea alone i wake up on the sea
                 alone i seek out for help alone i may not survive alone i eat my dry food "

     recurrence_of_words = Hash.new(0)
     my_array = paragraph.split(" ")
     my_array.each {|w| recurrence_of_words[w] += 1}

     puts recurrence_of_words 

 # > {"alone"=>9, "i"=>9, "lay"=>1, "on"=>2, "a"=>1, "wooden"=>1, "raft"=>1, "stay"=>1, "in"=>1, "the"=>3,
 #    "dark"=>1, "pray"=>1, "to"=>1, "survive"=>3, "may"=>2, "not"=>2, "look"=>1, "out"=>2, "sea"=>2, "wake"=>1,
 #    "up"=>1, "seek"=>1, "for"=>1, "help"=>1, "eat"=>1, "my"=>1, "dry"=>1, "food"=>1}   

 
 #return the word that has been used the most
     
     puts "The word that has been used the most is :", recurrence_of_words.max_by{|k,v| v}[0]

 # > alone                 





#encapsulate your script inside of a method that can analyze any block of text fed to it


def frequency_of_each_word(text)
  words = text.split(" ")
  frequency = Hash.new(0)
  words.each { |word| frequency[word] += 1 }
  frequency
end

puts frequency_of_each_word("The original pizza used only mozzarella, the highest quality ones the buffalo mozzarella variant,
                            produced in the surroundings of Naples. Other kinds of cheese may be used for creative alternative 
                            recipes (provolone, pecorino romano, ricotta, scamorza and many others), including processed cheeses 
                            for mass-market pizzas manufactured to produce desirable qualities like browning, melting, stretchiness 
                            and fat and moisture content")


# >   {"The"=>1, "original"=>1, "pizza"=>1, "used"=>2, "only"=>1, "mozzarella"=>2, "the"=>3, "highest"=>1, "quality"=>1, "ones"=>1, 
#     "buffalo"=>1, "variant"=>1, "produced"=>1, "in"=>1, "surroundings"=>1, "of"=>2, "Naples"=>1, "Other"=>1, "kinds"=>1, "cheese"=>1,
#     "may"=>1, "be"=>1, "for"=>2, "creative"=>1, "alternative"=>1, "recipes"=>1, "provolone"=>1, "pecorino"=>1, "romano"=>1, "ricotta"=>1,
#     "scamorza"=>1, "and"=>3, "many"=>1, "others"=>1, "including"=>1, "processed"=>1, "cheeses"=>1, "mass"=>1, "market"=>1, "pizzas"=>1,
#     "manufactured"=>1, "to"=>1, "produce"=>1, "desirable"=>1, "qualities"=>1, "like"=>1, "browning"=>1, "melting"=>1, "stretchiness"=>1, 
#     "fat"=>1, "moisture"=>1, "content"=>1}

     
  



 	
