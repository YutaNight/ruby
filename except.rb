begin
  val = 10 / 0
  puts val
rescue => e
  p e
  p e.backtrace
  p e.full_message
end