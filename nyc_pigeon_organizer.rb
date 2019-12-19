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

def nyc_pigeon_organizer(data)
  hash_to_return = get_pigeon_names(data)
  
  hash_to_return.each_key do |bird_name| #iterate through the birds' names
    puts "o nome do passaro é #{bird_name}"
    data.each do |key, value| #iterate the original data 
      puts "dentro do data. A key é #{key} e o value é #{value}"
      
      #add the characteristic to the bird's hash 
      hash_to_return[bird_name][key] = []
      
      data[key].each do |caracteristic_key, caracteristic_value|
        puts "a key dentro da caracteristica é #{caracteristic_key}"
        puts "o value dentro da caracteristica é #{caracteristic_value}"
        caracteristic_value.length.times do |index|
          if caracteristic_value[index] == bird_name
            puts "\n\n\n"
            puts "é igual #{caracteristic_value[index]} e #{bird_name}"
            puts "então adicione #{caracteristic_key} ao passaro #{bird_name} na caracteristica #{key}"
            p caracteristic_key
            if caracteristic_key.instance_of? String
              return_hash[bird_name][key].push(caracteristic_key)
            else
              return_hash[bird_name][key].push(caracteristic_key.to_s)
            end
            puts caracteristic_key.instance_of? String
            puts "\n\n\n"
          end 
        end
      end
    end 
  end
  
end
