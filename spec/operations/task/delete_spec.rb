# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task::Delete do
  describe '.call(id)' do
    context 'when id is valid' do
      subject { Task::Delete.call(id: task.id) }

      let(:task) { create(:task) }

      it 'returns deleted task without error' do
        expect(subject.errors).to be_empty
      end

      it 'destroys task with provided id' do
        expect { subject }.to change { Task.count }.by(-1)
      end
    end
  end
end
