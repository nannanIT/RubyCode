#!/usr/bin/ruby
# -*- coding : utf-8 -*-

require 'pathname'

def helloFunc
  puts "Hello, I am a Ruby fucntion."
end

puts "Hello Ruby!"
puts "Hello world!"
helloFunc
n=2
puts "I am ok" if n>1
puts "I am not ok" unless n<=1
puts [].any?
puts [].all?
aFile = File.new("file.txt", "r+")
if aFile
  aFile.syswrite("Hello world!")
  aFile.close
else
  puts "create file failed"
end
puts File.size?("file.txt")
puts Dir.pwd
puts __FILE__
puts File.dirname(__FILE__)
puts Pathname.new(__FILE__).realpath

File.open("file.txt", "r") do |file|
  puts file.sysread(20)
  file.close
end