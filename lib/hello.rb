def hello_t(list)
  i = 0
  
  while i < list.size
    yield list[i]
    i = i + 1
  end
  
  list
end

# call your method here!

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end