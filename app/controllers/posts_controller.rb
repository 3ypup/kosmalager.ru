class PostsController < ApplicationController
def authentificate
  before_action :authenticate_user!
end

def index
  @posts = Post.all

  @bckg = "/img/home.jpg"
  @title = "Блог клуба"
  @label = "Храма свв. бесср. Космы и Дамиана"
end


def show
@post = Post.find(params[:id])

@bckg = @post.image

@title = @post.title

@label =""

end


def new



  @bckg = "/img/home.jpg"
  @title = "Новый пост"
  @label = ""
end

def create

    @post = Post.new(post_params)
      
      if  @post.save
        redirect_to @post
      else
        render action: 'new'
      end
  end


  def post_params
    params.require(:post).permit(:author, :content, :title, :image)
  end
end
