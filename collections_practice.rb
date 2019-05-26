# your code goes here
require 'pry'

def begins_with_r(tools)
  tools.all? { |ele| ele.start_with?("r") }

end

def contain_a(array)
  array.map { |ele| ele if ele.include?("a") }.compact
end

def first_wa(array)
  array.find { |ele| ele if ele.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.select { |ele| ele if ele.is_a?(String) }
end

def count_elements(arr)
  output_arr = []
  arr.each do | element |
    counter = element[:count] = 1
    if output_arr.include?(element) == false
      output_arr << element
  elsif output_arr.include?(element)
      output_arr.map do |element|
        element[:count] += 1
      end
    end
  end
  output_arr
end

def merge_data(thing1, thing2)
  keys.each do |hash|
    data.each do |ele|
      ele.each do |k, v|
        if hash[:first_name] == k
          hash.merge!(v)
        end
      end
    end
  end
  return keys
end

def find_cool(cool_arr)
  new_arr = []

  cool_arr.each do |hash|
    hash.collect do |k, v|
      if v == "cool"
        new_arr << hash
      end
    end
  end
  return new_arr
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |k, v|
    new_key = v[:location]
    if !new_hash.has_key?(new_key)
      new_hash[new_key] = [k]
    elsif new_hash.has_key?(new_key)
      new_hash[new_key] << k
    end
  end
  return new_hash
end
