class WelcomeController < ApplicationController
  def index
    @eventos = Evento.all
    @videos = Video.all
  end
end
