class AlbumsController < ApplicationController




def index

@bckg = "home.jpg"
@title = "Галерея"
@label = "Храма свв. бесср. Космы и Дамиана"


@albums=Album.all

end


def new
@bckg = "home.jpg"
@title = "Галерея"
@label = "Храма свв. бесср. Космы и Дамиана"

end



def create
@bckg = "home.jpg"
@title = "Галерея"
@label = "Храма свв. бесср. Космы и Дамиана"

@album = Album.new(album_params)
      
      if  @album.save
        redirect_to @album
      else
        render action: 'new'
      end
  end


def show
@album = Album.find(params[:id])
@bckg = "home.jpg"

@title = @album.title

@label = @album.content
  
  

end


def destroy
  @album = Album.find(params[:id])
  
  @album.comments.each do |comment|
    comment.destroy
  end

  

  @album.destroy


  redirect_to albums_path

end

def album_params
    params.require(:album).permit(:author, :content, :title, :image)
  end

end
