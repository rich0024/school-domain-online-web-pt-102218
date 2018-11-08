# code here!
class School
    attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade].push(student_name)
  end
  def grade(student_grade)
    @roster[student_grade]
  end
  def sort
    sorted_hash = {}
    @roster.each do |grade, student_names|
      sorted_hash[grade] = student_names.sort
    end
    sorted_hash
  end
end
