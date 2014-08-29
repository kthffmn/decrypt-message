def decode(message)
  until message.split("").uniq == message.split("")
    index_array = find_letters(message)
    if index_array.include? false
      break
    end
    message = update_message(message, index_array)
    puts message
  end
  final_message = message.gsub(/_(.*)/, "")
  puts "**************** final message ********************"
  puts final_message
end

def update_message(message, index_array)
  character = message[index_array[0]]
  message.slice!(index_array[0])
  message.slice!(index_array[1] - 1)
  message << character
end

def find_letters(message)
  message = message.split("")
  max_length = 0
  front_i = false
  back_i = false

  front = 0
  max = message.length
  puts "******* starting evaluation of #{max} characters *******"
  while front < max
    back = max - 1
    while back > front
      if message[front] == message[back]
        temp_arr = message[(front + 1)...back]
        if temp_arr.uniq == temp_arr
          if back - front + 1 > max_length
            front_i = front
            back_i = back
            max_length = back - front + 1
          end
        end
      end
      back -= 1
    end
    puts "#{front}/#{max}" if front % 100 == 0
    front += 1
  end
  [front_i, back_i]
end