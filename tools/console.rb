require_relative '../config/environment'

# Declare your variables here~~~

student1 = Student.new("mendy", "cohen")
student2 = Student.new("Bob", "Roy")
student3 = Student.new("David", "Anderson")

instructor1 = Instructor.new("Andy")
instructor2 = Instructor.new("Mike")
instructor3 = Instructor.new("Harry")

#(student, instructor, boating_test_name, boating_test_status)
boating1 = BoatingTest.new(student1, instructor1, "WhiteWater", "On")
boating2 = BoatingTest.new(student2, instructor2, "BlackWater", "Over")
boating3 = BoatingTest.new(student3, instructor3, "ClearWater", "Middle")


# don't remove!
binding.pry
0
