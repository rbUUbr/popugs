# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task::Update do
  describe '.call(id, name:,:, status:)' do
    context 'when id is valid' do
      let(:task) { create(:task) }

      context 'when name for task is valid' do
        subject { Task::Update.call(id: task.id, status: task.status, name: Faker::Verb.past_participle) }

        let(:name) { 'test name' }

        it 'returns updated object without any errors' do
          expect(subject.errors).to be_empty
        end
      end
    end
  end
end
