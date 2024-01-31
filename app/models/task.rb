class Task
  attr_reader :name, :done
  attr_accessor :id

  def initialize(attr = {})
    @id = attr[:id]
    @name = attr[:name]
    @done = false
  end

  #Mark task as done
  def mark_as_done
    @done = true
  end


end
