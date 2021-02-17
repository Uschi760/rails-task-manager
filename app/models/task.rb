# frozen_string_literal: true

# rubocop:enable
class Task < ApplicationRecord
  validates :title, presence: true
  validates :details, presence: true
end
