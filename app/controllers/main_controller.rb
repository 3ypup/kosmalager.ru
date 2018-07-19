class MainController < ApplicationController

def index

@posts = Post.all.last(5)
@albums = Album.all.last(5)
  @bckg = "/img/home.jpg"
  @title = "Приходской подростковый клуб"
  @label = "Храма свв. бесср. Космы и Дамиана"
end





end
