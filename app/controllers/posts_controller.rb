class PostsController < ApplicationController


def index
  @bckg = "/img/home.jpg"
  @title = "Приходской подростковый клуб"
  @label = "Храма свв. бесср. Космы и Дамиана"
end





  def post_params
    params.require(:post).permit(:author, :content, :title, :image)
  end
end
