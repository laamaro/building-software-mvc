class View
  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      x = task.done? ? '[X]' : '[ ]'
      puts "#{index + 1} #{x}- #{task.description}"
    end
  end

  def ask_user_for_description
    puts "What is the description of your task?"
    gets.chomp
  end

  def ask_user_for_index
    puts "What is the index of the task?"
    gets.chomp.to_i - 1
  end
end
