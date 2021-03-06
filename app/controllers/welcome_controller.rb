class WelcomeController < ApplicationController
  def index
    if mobile_device?
      @posts = Post.all.order("created_at DESC")
    else
    @posts = Post.paginate(:page => params[:page], :per_page => 12).order("created_at DESC")
    end
  end
  
   def show
    @post = Post.find(params[:id])
    @url = @post.photo.url(:mobile)
  end
end

