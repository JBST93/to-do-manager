require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

require_relative 'app/repositories/repository/'
require_relative 'app/models/task'

csv_file = File.join(__dir__, 'data/tasks.csv')
repository = Repository.new(csv_file)

get "/" do
    #List_all tasks from the Repository
    @tasks = repository.all
  erb :'/index'
end

post "/add_task" do
  name = params[:name]
  # Create new instance of Task
  task = Task.new({name: name})

  #Save to repo
  repository.add(task)
  redirect "/"

end
