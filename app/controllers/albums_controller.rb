class AlbumsController < ApplicationController




def index

@bckg = "/img/home.jpg"
@title = "Галерея"
@label = "нашего клуба"


@albums=Album.all

end


def new
@bckg = "/img/home.jpg"
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
@bckg = @album.image

@title = @album.title

@label = @album.content
  
  

end

def edit

end

def destroy
  @album = Album.find(params[:id])
  
  @album.comments.each do |comment|
    comment.destroy
  end

  

  @album.destroy


  redirect_to albums_path

end

  def edit
      @album = Article.find(params[:id]) 
  end


def update

  @album = Album.find(params[:id])
     if  @album.update(album_params) 
        redirect_to @album

      else
        render action: 'edit'
      end

end

def album_params
    params.require(:album).permit(:author, :content, :title, :image,  {pics: []})
  end

end
