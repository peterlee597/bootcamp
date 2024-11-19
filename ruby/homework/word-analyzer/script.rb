#Word array
words = ["level", "elephant", "ruby", "book", "hello"]

for word in words 

    puts "Word: #{word}"

    #Check if word is palindrome
    if (word.reverse == word)
        palindrome = true 
    else
        palindrome = false
    end
    if (palindrome == true)
        puts "-Palindrom: Yes"
    else
        puts "-Palindrom: No"
    end
    #Check if Word contains E
    if word.include?("e")
        puts "-Contains 'e': Yes"
    else
        puts "-Contains 'e': No"
    end
    #Character Count
    puts "-Character Count: #{word.length}"
    #Check if word is ruby and changes it to python if so
    if (word == "ruby")
        word = "python"
        puts "-After Replacement: #{word}"
    else
        puts "-After Replacement: #{word}"
    end
end

