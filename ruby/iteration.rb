# Release 0

def list_dinos()
  puts "Starting outside the block."
  puts "T-Rex"
  puts "Now entering the block."
  yield("Stegosaurus", "Ankylosaurus", "Gallomimus")
  puts "Now exiting the block."
  puts "Brontosaurus"
end

list_dinos { |dino1, dino2, dino3| puts dino1; puts dino2; puts dino3 }

# Release 1

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

hollywood_actors = {
  "Brad Pitt" => "Interview With a Vampire",
  "Ben Affleck" => "Argo",
  "Matt Damon" => "Good Will Hunting",
  "Angelina Jolie" => "Tomb Raider",
  "Michael Cera" => "Superbad"
}

numbers.each do |x|
  puts x
end

hollywood_actors.each do |actor, movie|
  puts "#{actor} was the star of #{movie}."
end

numbers.map! do |x|
  x * 10
end

puts numbers

# Release 2

# 1.
scores = [2, 3, 8, 15, 27]

scores.delete_if { |score| score < 10 }

puts scores

hash = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5
}

puts hash.delete_if { |word, digit| digit < 3 }

# 2.

scores_two = [2, 3, 8, 15, 27]

hash_two = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5
}

puts scores_two.select { |score| score < 10 }

puts hash_two.select { |word, digit| digit < 3 }

# 3. 

scores_three = [2, 3, 8, 15, 27]

hash_three = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5
}

puts scores_three.keep_if { |score| score < 10 } 

puts hash_three.keep_if { |word, digit| digit < 3 }

# 4.

scores_four = [2, 3, 8, 15, 27]

hash_four = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5
}

puts scores_four.take_while { |score| score < 10 }

puts hash_four.take_while { |word, digit| digit < 3 }
