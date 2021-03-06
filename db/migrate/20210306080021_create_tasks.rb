# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :status, required: true, default: 0
      t.string :name, required: true

      t.index :name, unique: true
      t.timestamps
    end
  end
end
