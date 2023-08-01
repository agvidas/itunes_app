# frozen_string_literal: true

class Album < ApplicationRecord
  validates :title, uniqueness: true
  validates :subtitle, uniqueness: true
end
