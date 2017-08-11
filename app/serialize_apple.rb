class Apple
  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end

apple = Apple.new(variety: 'Honeycrisp', origin: 'Minnesota', history: 'Introduction to Market: 1991')

File.open("/Users/coreyfischer/tmp/apple.dat", "w") do |file|
  file.print Marshal::dump(apple)
  file.close
end
