class Apple
  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end

apple = nil

File.open("/Users/coreyfischer/tmp/apple.dat", "r") do |file|
  apple = Marshal::load(file)
end

puts apple
