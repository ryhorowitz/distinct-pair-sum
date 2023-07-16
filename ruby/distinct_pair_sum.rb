def distinct_pair_sum(arr, k)
  pairs = {}

  (0...(arr.length - 1)).each do |idx|
  next_value = arr[idx+1]

    if next_value + arr[idx] == k &&
      !pairs.key?(next_value)&&
      !pairs.key?(arr[idx]) 

      pairs[arr[idx]] = [arr[idx], next_value]
    end
  end
  pairs.values
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [[1, 1], [2, 0]]"
  print "=> "
  print distinct_pair_sum([0, 1, 1, 2, 0, 1, 1], 2)

  puts

  puts "Expecting: [[2, 8]]"
  print "=> "  
  print distinct_pair_sum([3, 4, 2, 1, 5, 2, 8, 2], 10)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
# nested loop through array j = i inner loop to speed up process.
# if i + j = k
# push [i+j] into result array
#   exit out of inner loop and go to next iteration in outer loop
#   
