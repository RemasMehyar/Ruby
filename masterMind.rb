require "byebug"
$colors = { 1 => "red", 2 => "blue", 3 => "yellow", 4 => "green", 5 => "black", 6 => "white" }

def coder_input
  puts "please enter the 4 digits secret code using these 6 colors: (you can duplicate) "
  puts $colors
  coder_code = gets.chomp
  puts "\e[H\e[2J"
  $code = coder_code
end

def breaker_input
  puts "please enter your guess using these 6 colors: (colors can be duplicated) "
  puts $colors
  breaker_code = gets.chomp
  $guess = breaker_code
end

def check_guess(code, guess)
  exact_match = 0
  almost_match = 0
  code_temp = code.to_s.split("")
  code_freq = Array.new(10, 0)
  guess_freq = Array.new(10, 0)
  code_temp.each_with_index do |code_digit, index|
    guess_digit = guess[index]

    if code_digit == guess_digit
      exact_match += 1
    else
      code_freq[code_digit.to_i] += 1
      guess_freq[guess_digit.to_i] += 1
    end
  end
  (0..9).each do |digit|
    common_occurrences = [code_freq[digit], guess_freq[digit]].min
    almost_match += common_occurrences
  end

  [exact_match, almost_match]
end

def roles(role)
  if role == "1"
    coder_input
  elsif role == "2"
    breaker_input
  elsif role != "1" || role != "2"
    puts "invalid input"
    play
  end
end

def play
  puts "please enter your role : 1-coder 2-breaker "
  role = gets.chomp
  roles(role)
  flag = true
  while flag
    breaker_input
    result = check_guess($code, $guess)
    puts result
    if result == [4, 0]
      flag = false
      puts "you won"
    end
  end
end

play
