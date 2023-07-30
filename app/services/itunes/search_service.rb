# frozen_string_literal: true

module Itunes
  class SearchService
    include HTTParty
    base_uri 'https://itunes.apple.com'

    RESULTS_LIMIT = 25
    private_constant :RESULTS_LIMIT

    def initialize(term)
      @options = { query: { term:, limit: RESULTS_LIMIT } }
    end

    def call
      JSON.parse(self.class.get('/search', options))
    end

    private

    attr_reader :options
  end
end
