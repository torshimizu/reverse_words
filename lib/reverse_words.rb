# A method to reverse each word in a sentence, in place.
require 'pry'

def reverse_words(my_words)
  return if my_words == nil
  length = my_words.length
  return if length < 1

   new_arr = []
   i = 0
   while i < length do
     temp = ""
     until my_words[i] == " " || my_words[i] == nil
       temp = temp + my_words[i]
       i += 1
     end
     new_arr << temp
     if my_words[i] == " "
       new_arr << my_words [i]
       i += 1
     end
   end

   arr_len = new_arr.length
   counter = 0

   final_words = ""

   (arr_len).times do

     word = new_arr[counter]
     front_counter = 0
     back_counter = word.length - 1

     while back_counter > front_counter do
       temp_letter = word[back_counter]
       word[back_counter] = word[front_counter]
       word[front_counter] = temp_letter
       front_counter += 1
       back_counter -= 1
     end
     final_words = final_words + word

     counter += 1
  end

  j = 0
  length.times do
    my_words[j] = final_words[j]
    j += 1
  end

end
