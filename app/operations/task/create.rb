# frozen_string_literal: true

module Task
  class Create
    def self.call(name:)
      Task.create(name: name)
    end
  end
end
