def anagrams(input)
  arr = IO.readlines(input)
  anas = []
  grouped = arr.group_by { |element| element.downcase.chars.sort }.values
  grouped.each do |group|
    if group.length > 1
      anas << group
    end
  end
  anas
end

puts "There were #{anagrams("wordlist.txt").flatten.length} anagram words."
puts anagrams("wordlist.txt")
