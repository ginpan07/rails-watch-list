class ListsController < ApplicationController
  def index
    @movies = Movie.all
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @movies = @list.movies
    raise

  end
end
