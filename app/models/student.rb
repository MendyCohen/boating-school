class Student

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  #Returns an array of all students' full names
  def self.full_names
    Student.all.map{|student| "#{student.first_name} #{student.last_name}"}
  end

  #Should initialize a new `BoatingTest`
  #with a `Student` object, a boating test
  #name (`String`), a boating test status (`String`),
  # and an `Instructor` object
  def add_boating_test(instructor, test_name, test_status)
    BoatingTest.new(self, instructor, test_name, test_status)
  end #not working properly/moving on.

  #Takes in a full name as a string and
  #returns back that `Student` object
  def self.find_student(full_name)
    Student.all.select do |student_name|
      "#{student_name.first_name} #{student_name.last_name}" == full_name
    end
  end

end
