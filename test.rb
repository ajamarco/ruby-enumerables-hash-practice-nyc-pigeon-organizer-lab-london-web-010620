pigeon_data = {
  :color => {
    :brown => ["Luca"],
    :black => ["Lola"],
    :blue => ["Luca", "Lola"]
  },
  :gender => {
    :male => ["Luca"],
    :female => ["Lola"]
  },
  :lives => {
    "Central Park" => ["Lola", "Luca"],
    "Library" => ["Luca"]
  }
}

pigeon_names = {"Luca"=>{}, "Lola"=>{}}

#==============================================

def get_pigeon_names(birds_hash)
  names_array = [] #create a new array to hold the birds' names
  birds_hash.each do |key, value| #iterate through the parent hash
    birds_hash[key].each do |key2, value2| #iterate through the hash within
      #add into the array the bird name inside this hash
      names_array.push(value2[0]) 
    end
  end
  names_array.uniq! #drop all duplicated names 
  returned_hash = {} #create a new hash to return 
  
  #iterate through the array and create a new hash with the names to return
  names_array.length.times do |index| 
    returned_hash[names_array[index]] = {}
  end
  returned_hash
end 
#==================================================================

# return_hash = pigeon_names
# pigeon_names.each_key do |key|
#   puts "o nome do passaro é #{key}"
#   pigeon_data.each_key do |data_key|
#     puts "dentro do primeiro hash #{data_key}"
#     pigeon_data[data_key].each do |key2, value2|
#       puts "aqui precisamos fazer o times dentro do #{value2}"
#       
#     end
#   end 
# end

test_array = ["a", "b", "c"]
if test_array.include?("c")
  puts "é nóis"
end

