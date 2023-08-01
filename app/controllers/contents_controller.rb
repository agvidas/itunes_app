# frozen_string_literal: true

class ContentsController < ApplicationController
  def index = @contents = Album.all

  def show = @contents = contents

  def create
    @album = Album.new(album_params)

    if @album.save
      render json: { message: 'Album saved successfully.' }, status: :created
    else
      render json: { errors: @album.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to root_path
  end

  private

  def album_params = params.require(:content).permit(:title, :subtitle, :thumbnail)

  def contents = itunes_results.map(&ContentPresenter)

  def itunes_results = Itunes::SearchService.new(term).call

  def term = params[:term]
end
