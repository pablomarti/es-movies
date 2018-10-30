class Api::V1::MoviesController < ApplicationController
  def index
    response = Movie.search params[:q]
    render json: response
  end
end
