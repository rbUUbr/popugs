# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task::Create do
  describe '.call(name:, status:)' do
    context 'when name is valid' do
      subject { Task::Create.call(name: Faker::Verb.base) }

      it 'returns created object without any errors' do
        expect(subject.errors).to be_empty
      end
    end
  end
end
