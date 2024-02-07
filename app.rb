require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

require "sinatra/activerecord"
require_relative 'app/models/task.rb'
require_relative "config/application"


set :root, File.expand_path("", __dir__)
set :views, proc { File.join(root, "app/views") }
set :bind, '0.0.0.0'

after do
  ActiveRecord::Base.connection.close
end

get "/" do
    #List_all tasks from the Repository
    @tasks = Task.all
  erb :'/index'
end

post "/add_task" do
  name = params[:name]
  # Create new instance of Task
  task = Task.create({name: name})
  redirect "/"
end


post "/delete_task" do
  p id = params[:id]
  Task.find(id).destroy
  redirect "/"
end
