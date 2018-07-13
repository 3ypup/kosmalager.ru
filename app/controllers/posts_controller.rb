class PostsController < ApplicationController


def index
end





  def post_params
    params.require(:post).permit(:author, :content, :title, :image)
  end
end
