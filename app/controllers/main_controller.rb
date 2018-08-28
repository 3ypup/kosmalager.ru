class MainController < ApplicationController
$rusdate = %w[0 января февраля марта апреля мая июня июля августа сентября октября ноября декабря ]

def index

@posts = Post.all.last(5)
@events = Event.all.last(5)
@albums = Album.all.last(5)
@album = Pic.all.last(15)

  @bckg = "/img/home.jpg"
  @title = "Приходской подростковый клуб"
  @label = "Храма свв. бесср. Космы и Дамиана"
end





end
