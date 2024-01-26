require_relative 'view'
require_relative 'task'

class Controller
  def initialize(repository)
    @view = View.new
    @repository = repository
  end

  def add
    # 1- perguntar pro usuário qual a task (manda na view)
    description = @view.ask_user_for_description
    # 2- adicionar a task no repositório
    task = Task.new(description)
    @repository.add_task(task)
  end

  def list
    # 1- Pegar com o repositorio todas as tasks
    tasks = @repository.all
    # 2- Mandar a view fazer o display das tasks
    @view.display_tasks(tasks)
  end

  def mark_completed
    # 0- Fazer o display das tasks
    list
    # 1- Perguntar para o usuário qual a tarefa que ele concluiu (view)
    index = @view.ask_user_for_index
    # 2- Achar a tarefa dentro da nossa array (repository)
    task = @repository.find(index)
    # 3- Mudar o status de done na nossa tarefa (model)
    task.mark_as_done!
    # 4- Listar as tasks
    list
  end

  def remove
    # 0- Fazer o display das tarefas
    list
    # 1- Perguntar para o usuário qual a tarefa que ele quer remover (view)
    index = @view.ask_user_for_index
    # 2- Achar a tarefa dentro da array para deletar
    @repository.delete(index)
    # 3- Listar tarefas de novo
    list
  end
end
