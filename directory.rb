student_count = 23
# let's put all students into an array
students = [
{:name => "Mario Gintili", :cohort => :february},
{:name => "Mikhail Dubov", :cohort => :february},
{:name => "Karolis Noreika", :cohort => :february},
{:name => "Michael Sidon", :cohort => :february},
{:name => "Charles De Barros", :cohort => :february},
{:name => "Ruslan Vikhor", :cohort => :february},
{:name => "Toby Retallick", :cohort => :february},
{:name => "Mark Mekhaiel", :cohort => :february},
{:name => "Sarah Young", :cohort => :february},
{:name => "Hannah Wight", :cohort => :february},
{:name => "Khushkaran Singh", :cohort => :february},
{:name => "Rick Brunstedt", :cohort => :february},
{:name => "Manjit Singh", :cohort => :february},
{:name => "Alex Gaudiosi", :cohort => :february},
{:name => "Ross Hepburn", :cohort => :february},
{:name => "Natascia Marchese", :cohort => :february},
{:name => "Tiffanie Chia", :cohort => :february},
{:name => "Matthew Thomas", :cohort => :february},
{:name => "Freddy McGroarty", :cohort => :february},
{:name => "Tyler Rollins", :cohort => :february},
{:name => "Richard Curteis", :cohort => :february},
{:name => "Anna Yanova", :cohort => :february},
{:name => "Andrew Cumine", :cohort => :february},
]

def print_header
  print "The students of my cohort at Makers Academy\n"
  print "-------------\n"
end

def display(students)
  students.each do |student|
    print "#{student[:name]} (#{student[:cohort]} cohort)\n"
  end
end

def print_footer(names)
  print "Overall, we have #{names.length} great students!\n"
end

def input_students
  print "Please enter the names of the students\n"
  print "To finish, just hit return twice\n"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {:name => name, :cohort => :february}
    print "Now we have #{students.length} students\n"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

print_header
students = input_students
display(students)
print_footer(students)
