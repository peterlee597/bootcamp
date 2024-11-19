<<<<<<< HEAD
# Read text from a file
def read_text_from_file(filename)
    File.read(filename)
end

=begin 
 try using Ruby methods
 it's similar to using a function in js
 look up function/method `read_text_from_file` as an example
 structure: 
 def method_name
    logic of method goes in here
 end

=end

# logic for text_analyzer requirments go here:

#Method to count words
def count_words(text)
    words = text.scan(/\b\w+\b/)
    words.length
end
#Method to count characters
def count_characters(text)
    text.length
end
#Method to count characters
def count_paragraphs(text)
    paragraphs = text.split("\n\n")
    paragraphs.size
end
#Method for most common word
def most_common_word(text)
    words = text.scan(/\b\w+\b/)
    word_frequency = Hash.new(0)
    
    words.each do |word|
        word_frequency[word.downcase] +=1
    end
    
    most_common = word_frequency.max_by{|word, frequency| frequency}
    most_common
end

def analyze_text(filename)
    text = read_text_from_file(filename)

    word_count = count_words(text)
    character_count = count_characters(text)
    paragraph_count = count_paragraphs(text)
    most_common, most_common_frequency = most_common_word(text)
    top_words = word_frequency_stats(text)

    puts "Word Count: #{word_count}"
    puts "Character Count: #{character_count}"
    puts "Paragraph Count: #{paragraph_count}"
    puts "Most Common Word: #{most_common} Appears #{most_common_frequency} times"
    puts "Top 10 most Common Words: " 
    top_words.each do |word, frequency| 
        puts "'#{word}' - #{freuency} times"
end

if ARGV.length == 1 
    filename = ARGV[0]
    analyze_text(filename)
else
    puts "Usage: ruby script_name.rb <filename>"
end

def word_frequency_stats(text)
    words = text.scan(/\b\w+\b/)
    word_frequency = Hash.new(0)
    
    sorted_word_frequency = word_frequency.sort_by{ |word, frequency| -freuency}

    sorted_word_frequency[0...10]
end

# Analyze the sample text
filename = 'test.txt' # Replace with your text file
text = read_text_from_file(filename)

# use `text` ^ to pass as a parameters to your methods

# puts statements to console go here:

puts 'this is a test'
=======
#Read the text
def read_text_from_file(filename)
    File.read(filename)
end
#Turns the text into an hash with arrays and itterate through it to find frequencies.
def frequency(text)
    words = text.scan(/\w+/) #splits the text string into an arraw and stores it in a variable called words
    frequencies = Hash.new(0) #Create a new hash called frequencies
    words.each do |words|
        frequencies[words] += 1 #Itterate through the words and add 1 for each time that the word is seen
    end 
end 
#Find the largest number amongst the Words in the text
def largest_number(text)
    frequency(text)
    max = frequencies.max_by{|words, count| count} #Grabs the most frequely used word and its count
    print "The most frequently occuring word is: #{max}"   
end 













filename = 'test.txt' # Replace with your text file
text = read_text_from_file(filename)
largest_number(text)
>>>>>>> c21006629de860cb3a05797dfe2222fae3a75048
