require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

require_relative 'app/repositories/repository/'
require_relative 'app/models/task'

get "/" do
    #Create the repository
    csv_file = File.join(__dir__, 'data/tasks.csv')
    repository = Repository.new(csv_file)
    #List_all tasks from the Repository
    @tasks = repository.all
  erb :'/index'
end
