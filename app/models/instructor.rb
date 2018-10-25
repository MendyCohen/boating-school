class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  #Shows all boating tests that this instructor is conducting
  def boating_tests
    BoatingTest.all.select{|test|test.instructor == self}
  end

  #Changes a test's status to being `failed`
  def fail_student(student_name, test_name)
    boating_tests.map do |test|
      test.boating_test_status = "Failed"
    end
  end

  #Changes a test's status to being `passed`
  def pass_student(student_name, test_name)
    boating_tests.map do |test|
      test.boating_test_status = "Passed"
    end
  end

end
