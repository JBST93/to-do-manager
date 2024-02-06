require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

require "sinatra/activerecord"
set :database, {adapter: "sqlite3", database: "to_do.sqlite3"}





get "/" do
    #List_all tasks from the Repository
    @tasks = Task.all
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
