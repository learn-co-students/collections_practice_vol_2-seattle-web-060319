#feathers

require 'pry'

def begins_with_r(tools)
  true_r = []
  false_r = []
    tools.each do |tool|
      if tool[0] != "r"
        false_r << tool
      else
        true_r <<tool
      end
    end
    if false_r.length != 0
      return false
    else
      return true
    end   
end

def contain_a(elements)
  elements.find_all { |element| element.include?("a")}
end

def first_wa(elements)
  strings_array = []
  elements.each do |element|
    strings_array << element.to_s
    #binding.pry
    strings_array.each do |str|
      if str.start_with?("wa")
        return str
      end
    end
  end
end

def remove_non_strings(my_array)
  my_array.select { |element| element.class == String}
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end
  array.uniq
end

def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash|
    new_prop_hash = {}
    arr1.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      end
    end
    new_prop_hash
  end
end

def find_cool(array)
  all_cool = []
  array.each do |element|
    all_cool << element if element[:temperature] == "cool"
  end
  all_cool
end

def organize_schools(schools)
  organized_schools = {}

  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end






