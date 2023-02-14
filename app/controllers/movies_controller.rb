class MoviesController < ApplicationController
    before_action :authenticate_user!, only: [:new]
    def index
        @movies = Movie.all
    end
    def new
        @movie = Movie.new
    end
    def about
    end
    def create
        movie = Movie.new(movie_params)
        movie.user_id = current_user.id
        if movie.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      def show
        @movie = Movie.find(params[:id])
      end
      def destroy
        movie = Movie.find(params[:id])
        movie.destroy
        redirect_to action: :index
      end
    private
    def movie_params
        params.require(:movie).permit(:title, :image, :thoghts, :genre)
    end
end
