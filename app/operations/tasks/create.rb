# frozen_string_literal: true

module Tasks
  class Create
    def self.call(name:)
      Task.create(name: name)
    end
  end
end
