# TASK 1 : ARRAYS
#Question 1:
#Create an array and name it fruits
fruits = ["apple","banana","cherry","date","fig","grape"]

#Question 2: 
#Print the entire array
puts fruits

#Question 3: 
#Print the first and last elements of the array
puts fruits[0]
puts fruits[5]

#Question 4:
#Add Kiwi to the array
fruits.push("kiwi")


#Question 5:
#Delete Cherry from the array
fruits.delete("cherry")

#Question 6:
#Print the modified array that should contain kiwi and not cherry
fruits.each{|fruit| puts fruit}

#Question 7: 
#Check if apple is in the array and print the result.

if fruits.include?("apple") 
    print "true"
else 
    print "false"
end

#Question 8:
#calculate and print the total number of fruits in the fruit array.
puts fruits.length

#TASK 2: HASH
#Question 1: 
#Create a has named student with the following key-value pairs
student = {
    "name" => "John Smith",
    "age" => 25,
    "major" => "Computer Science"
}

#QUESTION 2
# Print only the value associated with the "name" key
puts student["name"]

#Question 3
#Add a new key-value pair to the hash
student.merge!("gpa" => 3.7)

#Question 4 
#Change the age to 26 
student["age"] = "26"

#Question 5
#print the new modified hash
print student

#Question 6 
if student.include?("gender")
    print "true"
else 
    print "false"
end