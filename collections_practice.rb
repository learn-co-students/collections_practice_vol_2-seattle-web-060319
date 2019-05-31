require 'pry'

# your code goes here
def begins_with_r (array)
  array.all? { |word| word.start_with?("r") }
end

def contain_a(my_array)
  my_array.map { |str| str if str.include?('a') }.compact
end

def first_wa(array)
  array.find { |str| str if str.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String)}
end

def count_elements(array)
  array.each do |keys|
    keys.each do |key, value|
      values.each do |value|
          counts[value] += 1
  binding.pry
      end
    end
  end
end

def count_elements(array)
  new_arr = []
  hash = Hash.new(0)
  array.each {|word| hash[word] += 1 }
  hash.each do |key, value|
    key[:count] = value
    new_arr << key
    # binding.pry
  end
  new_arr
end

def merge_data(array1, array2)
  result = []
  array1.each_with_index do |x, i|
    result << array1[i].merge(array2[0][array1[i].values[0]])
    # binding.pry
 end
 result
end

def find_cool(array)
  cool_array = []
  array.each do |first|
    first.each do |key, value|
      if value == "cool"
        cool_array << first
        # binding.pry
      end
    end
  end
  cool_array
  # binding.pry
end

def organize_schools(schools)
  result = Hash.new
  schools.each do |key, value|
    if result[value[:location]] == nil
      result [value[:location]] = []
      result [value[:location]].push(key)
    else
      result[value[:location]].push(key)
      # binding.pry
    end
  end
  result
end
# your code goes here
