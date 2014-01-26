require "./config/boot"

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

desc "Run puma"
task "puma" do
  require "puma/cli"
  runtime = ENV["PUMA_ARGS"].split(" ") || ["-t", "32:64"]
  Puma::CLI.new(runtime).run
end

desc "Run pry"
task "pry" do
  require "pry"
  Pry.start
end
