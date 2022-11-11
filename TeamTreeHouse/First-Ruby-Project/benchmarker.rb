class BenchMarker

    def run(description, &block) 
        puts description
        start_time = Time.now
        block.call
        end_time = Time.now
        elapsed = end_time - start_time
        puts "\n"
        puts "Time elapsed: #{elapsed} seconds"
    end
end

benchmarker = BenchMarker.new
benchmarker.run("Sleep a random amount of time") do 
    5.times do |index|
        print ". #{index}"
        sleep(rand(0.1..1.0))
    end

end