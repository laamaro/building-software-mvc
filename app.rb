require_relative 'task_repository'
require_relative 'controller'
require_relative 'router'

repo = TaskRepository.new
controller = Controller.new(repo)
router = Router.new(controller)

router.run
