#!/usr/bin/ruby
# -*- coding : utf-8 -*-

require 'pathname'
require 'fileutils'

WORKSPACE_DIR = ENV['WORKSPACE'] || File.join(File.dirname(__FILE__), "../")

def helloFunc
  puts "Hello, I am a Ruby fucntion."
end

puts WORKSPACE_DIR
puts "Hello Ruby!"
puts "Hello world!"
helloFunc
n=2
puts "I am ok" if n>1
puts "I am not ok" unless n<=1
puts [].any?
puts [].all?
aFile = File.open("file.txt", "r+")
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

# 在 Ruby 中每一个对象都有唯一的对象标识符（Object Identifier），可以通过 object_id 方法来得到一个对象的标识符。Symbol 对象和 String 对象的差别：
puts :prebuild
puts :prebuild.object_id
puts :"prebuild".object_id
puts "prebuild".object_id
puts "prebuild".object_id
puts "prebuild".object_id