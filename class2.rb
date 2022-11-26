class Greeting
  def hello
    puts "Hello, #{@name}!!!"
  end
end

class User < Greeting
  def initialize(name)
    @name = name
  end
end

user1 = User.new('rika')
user1.hello