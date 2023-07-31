# frozen_string_literal: true

class ContentsController < ApplicationController
  def index; end

  def show = @contents = contents

  private

  def contents = itunes_results.map(&ContentPresenter)

  def itunes_results
    Itunes::SearchService.new(term).call
  end

  def term = params[:term]
end
