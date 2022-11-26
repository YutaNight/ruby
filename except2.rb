class MyError < StandardError; end

begin
  raise MyError
rescue => e
  p e
ensure
  puts 'ensureですよ'
end