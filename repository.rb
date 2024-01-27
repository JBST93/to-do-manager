require_relative "task"

class Repository

  def initialize()
    @tasks = [["Name_1","Description_1"],["Name_2","Description_2"]]
  end

  #Give an array with all the tasks
  def all
    @tasks
  end

  #Add new Task instance
  def add(task)
    @tasks << task
  end

  #Delete task instance
  def delete
  end

end
