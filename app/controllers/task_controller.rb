class TaskController

  def initialize
    @repository = repository
  end 

  def add
    #Get response form from user 
    
    #Create the Task Instance 
    task = Task.new() 
    #Save the Task Instance in the DB
    repository.create(task)
    #Congratulate the user 

  end  
end 