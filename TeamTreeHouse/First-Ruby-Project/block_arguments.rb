def get_name 
    print "Enter your name: "
    name = gets.chomp

    # Will call the block of code with the argument "name"
    yield(name)

    #return the name with explicit return
    name
end

# Here we call the method with a block, and access the name variable sent by the "yield" keyword.
my_name = get_name do | name |
    puts "That's a cool name, #{name}!"
end
