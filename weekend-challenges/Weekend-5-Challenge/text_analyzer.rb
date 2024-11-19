# Read text from a file
def read_text_from_file(filename)
    File.read(filename)
end

# Word count method taking in text as a parameter
def word_count(text) 
    text.scan(/\w+/) #splits the text string into an array of words which can then be counted.
end
# Character count method
def character_count(text)
    text.length
end
#frequency method taking in text as a parameter
def frequency(text)
    words = text.scan(/\w+/) #splits the text string into an arraw and stores it in a variable called words
    frequencies = Hash.new(0) #Create a new hash called frequencies
    words.each do |words|
        frequencies[words] += 1 #Itterate through the words and add 1 for each time that the word is seen
    end 
    print "Word Frequencies of Text: \n#{frequencies}\n"   
end 
#largest number frequency
def largest_number(text)
    words = text.scan(/\w+/) #splits the text string into an arraw and stores it in a variable called words
    maxWords = Hash.new(0) #Create a new hash called frequencies
    words.each do |words|
        maxWords[words] += 1 #Itterate through the words and add 1 for each time that the word is seen
    end 
    max = maxWords.max_by{|words, count| count} #Grabs the most frequely used word and its count
    print "The most frequently occuring word is: #{max}"   
end 
#Top 10 frequently used words
def top_ten_words(text)
    words = text.scan(/\w+/) #splits the text string into an arraw and stores it in a variable called words
    topWords = Hash.new(0) #Create a new hash called frequencies
    words.each do |words|
        topWords[words] += 1 #Itterate through the words and add 1 for each time that the word is seen
    end 
    top = topWords.max_by(10,&:last) #Grabs the top 10 words being used
    print "The top 10 occuring words are: #{top}" 
end

filename = 'text.txt' # Replace with your text file
text = read_text_from_file(filename)
wordCount = word_count(text)
charCount = character_count(text)

# use `text` ^ to pass as a parameters to your methods

# puts statements to console go here:

puts text
puts "Text Contains: #{wordCount.count} Words"
frequency(text)
puts "Text Contains: #{charCount} Characters"
largest_number(text)
top_ten_words(text)



