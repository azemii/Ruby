class Monster
  attr_reader :name, :actions
  def initialize(name)
    @name = name
    @actions = {
      screams: 0,
      scares: 0
    }
  end
  def inspect
    "<#{name}, #{actions}>" # This is what gets printed when you call puts on a monster
  end

  def say(&block)
    print "#{name} says..."
    yield
  end

  def scream(&block)
    actions[:screams] += 1
    print "#{name} screams, "
    yield
  end

  def scare(&block)
    actions[:scares] += 1
    print "#{name} scares you! "
    yield self if block_given?
  end

  def print_scoreboard
    puts "-" * 20
    puts "#{name} scoreboard"
    puts "-" * 20
    puts "- Screams: #{actions[:screams]}"
    puts "- Scares: #{actions[:scares]}"
    puts "-" * 20
  end

end

monster = Monster.new('Delamondo')
monster.say {puts "Welcome to my crib"}
monster.scream do
  puts "WAAAAAAAAAH!!"
end

monster.scare do |monster|
  puts "Go away little one.."
  puts "I'm a scary #{monster.name}"
  puts "#{monster.inspect}"
end

monster.print_scoreboard