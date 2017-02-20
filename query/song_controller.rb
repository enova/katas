class SongController < ApplicationController
  def search
    @songs = Song.visible
    @songs = @songs.by_artist(params[:artist]) if params[:artist]
    @songs = @songs.by_album(params[:album]) if params[:album]
    @songs = @songs.by_title(params[:title]) if params[:title]
    @songs = @songs.before_year(params[:start_year]) if params[:start_year]
    @songs = @songs.after_year(params[:end_year]) if params[:end_year]
    @songs = @songs.with_genre(params[:genre]) if params[:genre]
  end
end
