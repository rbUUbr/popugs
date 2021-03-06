# frozen_string_literal: true

module Task
  class Update
    def self.call(id:, name:, status:)
      task = Task.find_by(id: id)
      raise 'Task with provided was not found' if task.nil?

      task.update(name: name, status: status)
      task
    end
  end
end
