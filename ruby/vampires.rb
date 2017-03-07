puts 'How many employees will be processed?'
employees = gets.chomp.to_i

for i in 1..employees
  puts "Beginning survey for employee number #{i}"

  puts 'What is your name'
  name = gets.chomp

  puts 'How old are you?'
  age = gets.chomp.to_i

  puts 'What year were you born?'
  year = gets.chomp.to_i

  puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
  garlic_bread = gets.chomp

  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp

  result = 'Results inconclusive'

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

  puts result
end

puts 'All surveys completed!'
