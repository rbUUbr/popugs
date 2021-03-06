# frozen_string_literal: true

module Task
  class Delete
    def self.call(id:)
      task = Task.find_by(id: id)
      raise 'Task with provided id was not found' if task.nil?

      task.destroy
      task
    end
  end
end
