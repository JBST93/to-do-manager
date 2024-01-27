require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

require_relative 'repository'
require_relative 'task'

get "/" do
    #Create the repository
    repository = Repository.new()
    #List_all tasks from the Repository
    @tasks = repository.all
  erb :index
end

get "/about" do
  erb :about
end
