class MainController < ApplicationController
$rusdate = %w[0 января февраля марта апреля мая июня июля августа сентября октября ноября декабря ]

def index


@posts = Post.all.last(5)
@events = Event.order(:date).last(5)
@albums = Album.all.last(5)
@label = "и другие интересные функции"
@album = Pic.all.last(10)
@tab_title = "Главная"


  @bckg = "/img/home.jpg"
  @title = "Главная"
  @label = "Добро пожаловать на сайт Приходского Молодежно-подросткового Клуба 
Храма свв. бесср. Космы и Дамиана (в Шубине)!
"
end

def terminal

@users = User.all

@bckg = "/img/home.jpg"
@title = "Управление доступом"
@label = "и другие интересные функции"

end



end
