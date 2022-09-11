class MyArray
    attr_reader :array
    def initialize
        @array = []
    end

    def push(item)
        array.push(item)
    end

    def each(&block)
        i = 0
        while i < array.length
            block.call(array[i])
            i += 1
        end
    end
end


my_array = MyArray.new 
my_array.push(1)
my_array.push(4)
my_array.push(5)
my_array.push(7)
my_array.push(333)

my_array.each {|item| puts "item #{item}"}