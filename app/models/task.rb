class Task < ActiveRecord::Base
  #Mark task as done
  def mark_as_done
    @done = true
  end


end
