def caesar_cipher(arr, num = 0)
    hash = Hash[('a'..'z').map.with_index.to_a]
  
    (0..arr.length - 1).each do |item|
      letter = arr[item].downcase
  
      next if hash[letter].nil?
  
      new_index = hash[letter] + num.to_i
  
      new_index -= 26 if new_index >= 26
  
      new_value = hash.key(new_index)
  
      new_value = new_value.upcase if arr[item] === arr[item].capitalize
  
      arr[item] = new_value
    end
  
    arr
  end
  
  puts 'Enter a string to cipher: '
  input = gets.chomp
  puts 'Enter number of letters to shift: '
  number = gets.chomp
  puts caesar_cipher(input, number)
  