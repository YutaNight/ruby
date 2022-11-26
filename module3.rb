module SampleModule
  def sum(a, b)
    a + b
  end
end

class SampleClass
  include SampleModule

  def call_sum(a, b)
    sum(a, b)
  end
end

sample = SampleClass.new
puts sample.sum(1, 2)
puts sample.call_sum(2, 4)