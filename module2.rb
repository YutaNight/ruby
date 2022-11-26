module Sample
  def module_func_sum(a, b)
    a + b
  end

  # モジュール関数設定
  module_function :module_func_sum
end

puts Sample.module_func_sum(1, 3)
