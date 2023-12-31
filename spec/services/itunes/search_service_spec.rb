# frozen_string_literal: true

require 'rails_helper'

module Itunes
  RSpec.describe SearchService do
    describe '#call' do
      subject(:search_service) { described_class.new(term).call }

      let(:term) { 'jack johnson' }
      let(:content) { JSON.parse(File.read('spec/fixtures/itunes_search_results.json')) }
      let(:search_results) { content['results'] }

      before do
        stub_request(:get, 'https://itunes.apple.com/search?limit=25&term=jack%20johnson')
          .to_return(status: 200, body: content.to_json, headers: {})
      end

      it 'returns the search results' do
        expect(search_service).to eq(search_results)
      end
    end
  end
end
