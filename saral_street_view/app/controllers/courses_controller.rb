#courses_controller.rb
#
class CoursesController < Saral::Controller 
  def create
    "This is a new course."
  end
  def modify
    "Course has been modified."
  end
  def delete
    "Course has been deleted."
  end
  #def method_missing(name, *args)
  #  "Sorry the action: #{name} is not available in this controller"
  #end
end

