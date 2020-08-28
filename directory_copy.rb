def input_students
  puts "Please enter the names of the students and then the cohort month".center(100)
  puts "To finish, just hit return twice".center(100)
  puts "If you make a mistake, type 'delete' twice to start again".center(100)
  students = []
  name = gets.chomp.to_sym
  cohort = gets.chomp
  if cohort == ""
    cohort = "Not added".to_sym
  end
  while !name.empty? do
    students << { name: name, cohort: cohort, height:
      :SixFoot, hobbies: :Painting, country_of_birth: :Sweden}
      if students.count == 1
        puts "Now we have #{students.count} student".center(100)
      else
      puts "Now we have #{students.count} students".center(100)
    end
    puts "Please enter the names of the students and then the cohort month".center(100)
    puts "If you make a mistake, type 'delete' twice to start again".center(100)
    name = gets.chomp.to_sym
    cohort = gets.chomp
    if cohort == ""
      cohort = "Not added"
    end
    if cohort == "delete" || name == "delete"
      students = students.clear
    end
  end
  return students
end

def print_header
  puts "The students of Villains Academy".center(100)
  puts "-------------".center(100)
end

def print(students)
  index = 1
  while index <= students.length do
    if students[index - 1][:name].length < 12 && students[index - 1][:name].start_with?("s")
        puts "#{index}: #{students[index - 1][:name]} (#{students[index - 1][:cohort]} cohort)
        Height: #{students[index - 1][:height]}
        Hobbies: #{students[index - 1][:hobbies]}
        Country of Birth: #{students[index - 1][:country_of_birth]}"
      end
  index = index + 1
end
end




def print_footer_names(names)
  puts "Overall, we have #{names.count} great students".center(100)
end

students = input_students
print_header

print(students.sort_by { |k| k[:cohort] })
print_footer_names(students)
