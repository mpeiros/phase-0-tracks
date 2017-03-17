# Methods to check user input
def check_if_integer
  begin
    num = Integer(gets.chomp)  
  rescue 
    puts 'Error reading input - please enter an integer number:'
    retry
  end

  num
end

def yes_or_no
  loop do
    case gets.chomp.downcase
    when 'yes'
      return true
    when 'no'
      return false
    else
      puts "Error reading input - please enter 'yes' or 'no':"
    end
  end  
end

def check_if_blank
  loop do
    input = gets.chomp

    if input == ''
      puts 'Input blank - please try again:'
    else
      return input
    end
  end
end

# Driver code
puts 'How many employees will be processed?'
employees = check_if_integer

for i in 1..employees
  puts "Beginning survey for employee number #{i}"

  puts 'What is your name'
  name = check_if_blank

  puts 'How old are you?'
  age = check_if_integer

  puts 'What year were you born?'
  birth_year = check_if_integer
 
  puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
  garlic_bread = yes_or_no

  puts "Would you like to enroll in the company's health insurance?"
  insurance = yes_or_no

  result = 'Results inconclusive'
  allergy = ''
  sunshine_allergy = false

  until allergy == 'done'
    puts "Enter an allergy or 'done' if no more allergies:"
    allergy = check_if_blank

    if allergy == 'sunshine'
      result = 'Probably a vampire'
      sunshine_allergy = true
      break
    end
  end

  current_year = Time.now.year
  correct_age = false
  if (age == current_year - birth_year || age == current_year - birth_year - 1)
    correct_age = true
  end

  if !sunshine_allergy
    if name == 'Drake Cula' || name == 'Tu Fang'
      result = 'Definitely a vampire'
    else
      if correct_age && (garlic_bread || insurance)
        result = 'Probably not a vampire'
      end

      if !correct_age && (!garlic_bread || !insurance)
        result = 'Probably a vampire'
      end

      if !correct_age && !garlic_bread && !insurance
        result = 'Almost certainly a vampire'
      end
    end
  end

  puts result
end

puts 'All surveys completed!'
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
