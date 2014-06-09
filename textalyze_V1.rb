lines = ARGV[0]

if ARGV[0] == nil
  puts "There is nothing to analyze!"
end

def item_counts(array)
  counts = {} 
  array.each do |item|
  	counts[item] = 0 unless counts.include?(item)
  	counts[item] += 1
  end
  counts 
end

def char_counts(string)
	string_array = string.split(//)
	return item_counts(string_array)
end

def sanitize(string)
	string.downcase
end

def analyzer(string)
  return "Please give me something to do!" if string == nil
  sanitized = sanitize(string)
  return char_counts(sanitized)
end

puts analyzer(lines)
