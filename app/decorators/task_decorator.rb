class TaskDecorator < DecoratorBase
  def completed(task)
    task.completed.presence == true ? 'Yes' : 'No'
  end

  def due_date(task)
    format task.due_date, as: :date
  end
end
