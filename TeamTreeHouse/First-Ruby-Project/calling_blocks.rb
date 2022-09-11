# We can also call the block by passing it in as an argument. Parameter name has have "&" before the name
def get_name(prompt, &block)
    # Only run the code if the mehtod has a block passed into it when called.
    if block_given?
        print prompt +": "
        name = gets.chomp

        # Will call the block of code with the argument "name"
        # yield name

        # Calling the block with the name as an arugment.
        block.call(name)

        #return the name with explicit return
        name
    else 
        puts "No block given..."
    end
end

# Here we call the method with a block, and access the name variable sent by the "yield" keyword.
my_name = get_name("Enter your name") do | name |
    puts "That's a cool name, #{name}!"
end

puts "#{my_name}"