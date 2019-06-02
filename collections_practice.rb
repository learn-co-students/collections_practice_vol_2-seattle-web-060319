require 'pry'
def begins_with_r(array)
  array.all? {|word| word.chr == "r"}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.reject {|index| index.class != String}
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|element| counts[element]+=1 }
    counts.collect do |hash, number|
      hash[:count] = number
    end
  counts.keys
end

def merge_data(keys, data)
    
end
