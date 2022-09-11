def block_method 
    puts "This si the first line in the block method"

    # The "yield" keyword will come out of the method block, and inside the calling block and run that code.
    yield 
end

# If the block_method has "yield" in it, we have to call it with a block, or get an error
block_method do 
    puts "This statment is called from the block."
end