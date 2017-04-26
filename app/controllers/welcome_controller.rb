class WelcomeController < ApplicationController
  def index
    @eventos = Evento.all
    @videos = Video.all
    @albuns = Album.all
  end
end
