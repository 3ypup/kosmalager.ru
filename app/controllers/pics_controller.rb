class PicsController < ApplicationController

def index
end

def new

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
