class PostsController < ApplicationController
  before_action :find_post ,only: [ :show , :update , :edit , :destroy]
  

  def new
    @post = Post.new
  end
    
  def index

    @post = Post.all
  end
    
    
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    end
  end

  def show

  end  

  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end    

  end  

  def edit

  end
  
  
  def destroy
    @post.destroy
    redirect_to posts_path

  end  
  

    
  def find_post
    @post = Post.find(params[:id])
  end  


  private

  def post_params
    params.require(:post).permit(:title , :content)
  end  

end
