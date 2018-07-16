class AlbumsController < ApplicationController




def index

@bckg = "home.jpg"
@title = "Галерея"
@label = "Храма свв. бесср. Космы и Дамиана"


end


def new
@bckg = "home.jpg"
@title = "Галерея"
@label = "Храма свв. бесср. Космы и Дамиана"

end

def album_params
    params.require(:album).permit(:author, :content, :title, :image)
  end

end
