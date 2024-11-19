#Solo challenge

#USE A WHILE LOOP
counter = 1
while counter <= 20
    if (counter % 2 == 0)
        puts "#{counter}: even"
    else
        puts "#{counter}: odd"
    end
    counter = counter +1
end
#USE A FOR LOOP
for num in 1..20
    if (num % 2 == 0)
        puts "#{num}: even"
    else 
        puts "#{num}: odd"
    end
end