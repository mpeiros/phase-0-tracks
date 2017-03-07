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
      return 'yes'
    when 'no'
      return 'no'
    else
      puts "Error reading input - please enter 'yes' or 'no':"
    end
  end  
end

# Driver code
puts 'How many employees will be processed?'
employees = check_if_integer

for i in 1..employees
  puts "Beginning survey for employee number #{i}"

  puts 'What is your name'
  name = gets.chomp

  puts 'How old are you?'
  age = check_if_integer

  puts 'What year were you born?'
  year = check_if_integer
 
  puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
  garlic_bread = yes_or_no

  puts "Would you like to enroll in the company's health insurance?"
  insurance = yes_or_no

  result = 'Results inconclusive'
  allergy = ''
  sunshine_allergy = false

  until allergy == 'done'
    puts "Enter an allergy or 'done' if no more allergies:"
    allergy = gets.chomp

    if allergy == 'sunshine'
      result = 'Probably a vampire'
      sunshine_allergy = true
      break
    end
  end

  if !sunshine_allergy
    if (age == 2017 - year || age == 2017 - year - 1) && (garlic_bread == 'yes' || insurance == 'yes')
      result = 'Probably not a vampire'
    end

    if !(age == 2017 - year || age == 2017 - year - 1) && (garlic_bread == 'no' || insurance == 'no')
      result = 'Probably a vampire'
    end

    if !(age == 2017 - year || age == 2017 - year - 1) && garlic_bread == 'no' && insurance == 'no'
      result = 'Almost certainly a vampire'
    end

    if name == 'Drake Cula' || name == 'Tu Fang'
      result = 'Definitely a vampire'
    end
  end

  puts result
end

puts 'All surveys completed!'
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
