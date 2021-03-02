class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all
    @post = Post.new
  end
  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path, notice: 'Post creado'
    else
      redirect_to root_path, alert: 'no pude crear el post'
    end
    
  end

  private    
    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:image, :content) # return { image: params[:post][:image], content: params[:post][:content] }
    end
end
