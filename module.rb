module Sample
  # モジュール定数
  CONST_NUM = 100

  # モジュールメソッド
  def const_num
    CONST_NUM
  end
end

# includeせずに利用
puts Sample::CONST_NUM

# includeして利用
include Sample
puts CONST_NUM
puts Sample.const_num