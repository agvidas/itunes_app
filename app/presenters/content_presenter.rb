# frozen_string_literal: true

class ContentPresenter
  def initialize(itunes_result)
    @itunes_result = itunes_result
  end

  def self.to_proc = ->(itunes_result) { new(itunes_result) }

  def thumbnail = itunes_result['artworkUrl100']

  def title = itunes_result['collectionName']

  def subtitle = itunes_result['artistName']

  private

  attr_reader :itunes_result
end
