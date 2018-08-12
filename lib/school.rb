class School
  attr_accessor :roster
  attr_reader :school, :add_student


  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort.to_h
    @roster.sort_by {|value| value}
  end

end