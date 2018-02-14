begin
  File.open('exception.rb', 'r') do |f1|
    while line = f1.gets
      puts line
    end
  end

  # Create a new file and write to it
  File.open('exception.rb', 'w') do |f2|
    # use "" for two lines of text
    f2.puts "Created by bdougieYO"
  end
rescue Exception => msg
  # display the system generated error message
  puts msg
end
