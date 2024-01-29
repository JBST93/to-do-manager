require_relative '../models/task'
require 'csv'

class Repository
  attr_accessor :tasks

  def initialize(csv_path)
    @tasks = []
    @csv_path = csv_path
    @next_id = 1
    load_csv
  end

  #Give an array with all the tasks
  def all
    @tasks
  end

  #Add new Task instance
  def add(task)
    task.id = @next_id
    @next_id += 1
    @tasks << task
    csv_save
  end

  #Delete task instance
  def delete(index)
    @task[index].delete
  end

  def load_csv
    if File.exist?(@csv_path)
      # Load the CSV Row by Row
      CSV.foreach(@csv_path, headers: :first_row, header_converters: :symbol) do |task|
        task[:id] = task[:id].to_i
        @next_id += 1
        # Push each instance into the array
        @tasks << Task.new(task)
      end
    end
  end

  def csv_save
  end

end
