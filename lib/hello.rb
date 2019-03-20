def hello_t(list)
  if block_given?
    i = 0
  
    while i < list.size
      yield list[i]
      i = i + 1
    end
  
    list
  else
    puts "Hey! No block was given!"
  end
end

# call your method here!

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end