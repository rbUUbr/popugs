# frozen_string_literal: true

class Task < ApplicationRecord
  enum status: %i[open in_progress closed]

  validates_uniqueness_of :name
  validates_presence_of :name
end
