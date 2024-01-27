class Task
  attr_reader :task, :description, :done

  def initialize(name, description)
    @name = name
    @description = description
    @done = false
  end

  #Mark task as done
  def mark_as_done
    @done = true
  end

end
