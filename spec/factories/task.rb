# frozen_string_literal: true

require 'factory_bot'
FactoryBot.define do
  factory :task do
    status { :open }
    name { Faker::Verb.base }
  end
end
