class PicsController < ApplicationController

def index
end

def new

@album = Album.find(params[:album_id])

  @bckg = "/img/home.jpg"
  @title = "Загрузить новые фотографии"
  @label = ""
end

def create
    

    @album = Album.find(params[:album_id])
    @album.pics.create(pic_params)

    redirect_to album_path(@album)
 

end

def show

end

  def pic_params
    params.require(:pic).permit({images: []})
  end
end
