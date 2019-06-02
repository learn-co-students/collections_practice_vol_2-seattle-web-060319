require 'pry'
def begins_with_r(array)
  array.all? {|word| word.chr == "r"}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def
