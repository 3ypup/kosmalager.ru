class PostsController < ApplicationController
def authentificate
  before_action :authenticate_user!
end

def index
  @posts = Post.all

  @tab_title = "Посты"
  @bckg = "/img/home.jpg"
  @title = "Блог клуба"
  @label = "Храма свв. бесср. Космы и Дамиана"
end


def show
@post = Post.find(params[:id])


@tab_title = @post.title
@bckg = @post.image

@title = @post.title

@label =""

end


def new
@post = Post.new

  @tab_title = "Новый пост"
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


  def destroy
  @post = Post.find(params[:id])
  
  #@post.comments.each do |comment|
  #  comment.destroy
  #end


  @post.destroy


  redirect_to posts_path

end


  def post_params
    params.require(:post).permit(:author, :content, :title, :image)
  end
end
