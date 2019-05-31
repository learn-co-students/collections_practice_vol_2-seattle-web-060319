require 'pry'

def begins_with_r(arr)
	!arr.map {|x| x.start_with?("r") ? true : false}.any?(false)
end

def contain_a(arr)
	arr.map {|x| x.include?("a") ? x : nil}.compact
end

def first_wa(arr)
	arr.each do |x|
		if x[0..1] == "wa"
			return x
		end
	end
end

def remove_non_strings(arr)
	arr.map {|x| x.class == String ? x : nil}.compact
end

def count_elements(arr)
	u = arr.uniq
	u.each_with_index do |x,i|
		u[i][:count] = arr.count(x)
	end
	return u
end

def merge_data(data1,data2)
	m_data = []
	data1.each_with_index do |x,i|
		h = x.merge(data2[0][x[:first_name].to_s])
		m_data << h
	end
	m_data
end

def find_cool(hsh)
	output = [];
	hsh.each do |name_hash|
		if name_hash[:temperature] == "cool"
			output << name_hash
		end
	end
	output
end

def organize_schools(schools)
	# schools.sort_by {|k,v| v.sort}
	
	l = schools.values.uniq.each {|k,v| v}
	l = l.map {|city| city[:location]}
	l.sort!

	output = {};

	l.each_with_index do |city, i|
		output[city] = []
		schools.each do |school_name, location_hash|
			if city == location_hash[:location]
				output[city] << school_name
			end
		end
	end
	output
end