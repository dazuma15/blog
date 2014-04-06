class WelcomeController < ApplicationController
  def index
    if mobile_device?
      @posts = Post.all
    else
    @posts = Post.paginate(:page => params[:page], :per_page => 5)
    end
  end
  
   def show
    @post = Post.find(params[:id])
  end
end

