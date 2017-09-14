
def first_anagram?(str1, str3)
  str1_permutes = str1.chars.permutation.to_a
  str1_permutes.each do |permutation|
    return true if permutation == str3.chars
  end
  return false
end

def second_anagram?(str1, str3)
  str3_dup = ""
  str1.chars.each do |letter1|
    str3.chars.each do |letter2|
      if letter2 == letter1
        str3_dup << letter1
      end
    end
  end
  str3_dup == str1
end

def third_anagram?(str1,str3)
  str1.chars.sort == str3.chars.sort
end

def fourth_anagram?(str1,str3)
  hash1 = Hash.new(0)
  hash3 = Hash.new(0)
  str1.each_char do |chr|
    hash1[chr] += 1
  end
  str3.each_char do |chr|
    hash3[chr] += 1
  end
  hash1 == hash3
end

if __FILE__ == $PROGRAM_NAME
  p fourth_anagram?("elvis","sally")
  p fourth_anagram?("elvis","lives")
end
