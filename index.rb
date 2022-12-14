# frozen_string_literal: true

@morse_values = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(par)
  print @morse_values[par]
end

def decode_word(word)
  word.split.each do |n|
    print decode_char(n)
  end
end

def decode_sentence(sentence)
  sentence.split('   ').each do |n|
    decode_word(n)
    print ' '
  end
end

# decode_char('.-')
decode_word('-- -.--')
# decode_sentence(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
