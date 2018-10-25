class BoatingTest

  attr_accessor :student, :instructor, :boating_test_name, :boating_test_status

  @@all = []

  def initialize(student, instructor, boating_test_name, boating_test_status)
    @student = student
    @instructor = instructor
    @boating_test_name = boating_test_name
    @boating_test_status = boating_test_status
    @@all << self
  end

  def self.all
    @@all
  end
  
end
