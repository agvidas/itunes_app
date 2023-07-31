# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContentPresenter do
  subject(:content_presenter) { described_class.new(content) }

  let(:content) { JSON.parse(File.read('spec/fixtures/itunes_search_results.json'))['results'].first }

  describe 'thumbnail' do
    it 'returns the artworkUrl100' do
      expect(content_presenter.thumbnail).to eq(content['artworkUrl100'])
    end
  end

  describe 'title' do
    it 'returns the collectionName' do
      expect(content_presenter.title).to eq(content['collectionName'])
    end
  end

  describe 'subtitle' do
    it 'returns the artistName' do
      expect(content_presenter.subtitle).to eq(content['artistName'])
    end
  end
end
