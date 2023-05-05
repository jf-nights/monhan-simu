require 'fileutils'

FileUtils.cp("armor","armor.bkup")

arr = []

open("armor") do |f|
  f.each_line do |line|
    arr << line
  end
end

open("armor", "w") do |f|
  f.puts(arr.sort)
end

