lines = ARGV[0]

if ARGV[0] == nil
  puts "There is nothing to analyze!"
end

def item_counts(array)
  counts = {} 
  array.each do |item|
    counts[item] = 0 unless counts.has_key?(item)
    counts[item] += 1
  end
  counts 
end

def char_counts(string)
  return item_counts(string.chars)
end

def sanitize(string)
  string.downcase
end

def analyzer(string)
  return char_counts(sanitize(string.to_s))
end

puts analyzer(lines)
