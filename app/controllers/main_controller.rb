class MainController < ApplicationController

def index

@posts = Post.all.last(5)
@events = Event.all.last(5)
@albums = Album.all
@album = Pic.all.last(15)
  @bckg = "/img/home.jpg"
  @title = "Приходской подростковый клуб"
  @label = "Храма свв. бесср. Космы и Дамиана"
end





end
