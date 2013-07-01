my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda do |sym|
    return sym if sym.is_a? Symbol
end

symbols = my_array.select &symbol_filter
puts symbols