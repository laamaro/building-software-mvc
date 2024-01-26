class TaskRepository
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def delete(index)
    @tasks.delete_at(index)
  end
end
