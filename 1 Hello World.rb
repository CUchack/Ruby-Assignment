class HelloWorldClass
  def initialize(name)
    @name = name.capitalize
  end
  def sayHi
    puts "Hello #{@name}!"
  end
end
hello = HelloWorldClass.new("dufus")
hello.sayHi

$end

