def read(filename)
  str = ""

  File.open(filename, "r") do |f|
    f.each { |line| str << line }
  end

  str
end

startTime = Time.now
data = read("test_data.junk")
endTime = Time.now

puts "Time elapsed #{endTime - startTime} seconds, read #{data.length}"
