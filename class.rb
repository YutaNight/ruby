require 'date'

class User
  attr_accessor :name, :birthday

  def initialize(name, birthday)
    @name = name
    @birthday = birthday
  end

  def display_birthday
    @birthday.strftime("%Y年%m月%d日")
  end

  def inner_call_display_birthday
    self.display_birthday
  end

  def call_private_name
    private_name
  end

  private

  def private_name
    @name
  end
end

birthday = Date.new(1994, 9, 14)
user = User.new('naito', birthday)

puts user.display_birthday
puts user.inner_call_display_birthday
puts user.call_private_name