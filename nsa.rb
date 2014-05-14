def wordlist
  words = []
  File.open("/usr/share/dict/web2") do |file|
    file.each do |line|
      words << line.strip
    end
  end
end

def decrypt(string)
  puts string
  common_letters = 'etaoinsrhldcumfp'.split(//).shuffle.join
  common_letters
  newstring = string.tr('pcidfkqratlewxno', common_letters)
  #puts string.tr('pcidfkqratlewxno', 'oeacpmtfriunlhds')
end

def create_word_possibilities(newstring='')
  maybe_words = []
  newstring = newstring.split(//)
  num_lets = 3
  #while num_lets < 4 do
    combinations = newstring.combination(num_lets).to_a
    combinations.each do |maybe_word|
      maybe_words << maybe_word.join
    end
    #num_lets += 1
  #end
  maybe_words
end

# common letters: P C I D F K Q R A T L E W X N O 'pcidfkqratlewxno'
# possible:
# common double: CA, CD, IQ, PC, II, CC
# possible:
# common triple: PCA
# possible:

string = "tpfccdlfdttepcaccplircdtdklpcfrp?qeiqlhpqlipqeodfgpwafopwprtiizxndkiqpkiikrirrifcapncdxkdciqcafmdvkfpcadf."
p create_word_possibilities(decrypt(string))
#lndoohedhllcnoaoonesmohlhpenodmn?rcsrehnresnrcthdgniadtninmlsszufhpsrnpsspmsmmsdoanfohuphosroadmhvpdnoahd.
