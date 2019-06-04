def begins_with_r(array)
  new_arr = []
  final_arr = []
  array.collect do |word|
    new_arr << word[0]
  end
  final_arr = new_arr.select { |x| x == "r" }
  final_arr == new_arr ? true : false
end

def contain_a(array)
  array.select do |x|
    x.include?("a")
  end
end

def first_wa(array)
  array.find { |x| x[0] + x[1] == "wa" }
end

def remove_non_strings(array)
  array.delete_if { |x| x.class != String }
end




# hash =  {:name => "blake"}
# last_hash = {:name => "blake", :count => 2}


def count_elements(array)
  last_hash = nil
  new_arr = []
  array.each do |hash|
    if last_hash == nil || hash[:name] != last_hash[:name]
      hash[:count] = 1
      last_hash = hash
      new_arr << hash
    else
      last_hash[:count] += 1
    end
    
  end
  new_arr
end




def merge_data(array1, array2)
  array1.collect do |h1|
    h1.merge(array2[0][h1[:first_name]])
  end
end

def find_cool(array)
  new_arr = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      new_arr << hash
    end
  end
  new_arr
end


def organize_schools(array)
  arr1 = []
  arr2 = []
  arr3 = []
  new_hash = {}
  schools.each do |school_name, info|
    info.each do |location_key, city|
      if city == "NYC"
        arr1 << school_name
      elsif city == "SF"
        arr2 << school_name
      elsif city == "Chicago"
        arr3 << school_name
      end
    end
  end

  new_hash["NYC"] = arr1
  new_hash["SF"] = arr2
  new_hash["Chicago"] = arr3

  new_hash
end
  

