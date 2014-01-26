begin
  # Skip warbler if it's not found.  It's not not included in production
  require "warbler"
  Warbler::Task.new
rescue LoadError
end

desc "Prints 'Hello, World!'"
task "print" do
  puts "Hello, World!"
end