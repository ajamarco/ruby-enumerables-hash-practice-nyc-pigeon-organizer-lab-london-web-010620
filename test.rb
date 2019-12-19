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

return_hash = pigeon_names
pigeon_names.each_key do |bird_name| #iterate through the birds' names
  puts "o nome do passaro é #{bird_name}"
  pigeon_data.each do |key, value| #iterate the original data 
    puts "dentro do data. A key é #{key} e o value é #{value}"
    
    #add the characteristic to the bird's hash 
    return_hash[bird_name][key] = []
    
    pigeon_data[key].each do |caracteristic_key, caracteristic_value|
      puts "a key dentro da caracteristica é #{caracteristic_key}"
      puts "o value dentro da caracteristica é #{caracteristic_value}"
      caracteristic_value.length.times do |index|
        if caracteristic_value[index] == bird_name
          puts "\n\n\n"
          puts "é igual #{caracteristic_value[index]} e #{bird_name}"
          puts "então adicione #{caracteristic_key} ao passaro #{bird_name} na caracteristica #{key}"
          p caracteristic_key
          puts caracteristic_key.instance_of? Object
          puts "\n\n\n"
        end 
      end
    end
  end 
end



