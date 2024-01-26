class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "Welcome!! What do you want to do?"
      puts "1 - List all tasks"
      puts "2 - Add a task"
      puts "3 - Mark a task as done"
      puts "4 - Remove a task"
      puts "5 - Leave the program"

      action = gets.chomp.to_i

      case action
      when 1 then @controller.list
      when 2 then @controller.add
      when 3 then @controller.mark_completed
      when 4 then @controller.remove
      when 5 then break
      else
        puts "Invalid action! Try again!"
      end
    end
  end
end
