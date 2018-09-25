class AlbumsController < ApplicationController




def index

@bckg = "/img/home.jpg"
@title = "Галерея"
@label = "нашего клуба"


@albums=Album.all
@tab_title = "Галерея"
end


def new

@album = Album.new

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
  
@tab_title = @album.title 

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
