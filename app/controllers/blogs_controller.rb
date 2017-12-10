class BlogsController < ApplicationController
  before_action :get_blog , only: [:show, :edit, :destroy]

  def index
    @blogs = Blog.all.reverse
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def destroy
      @blog = Blog.find(params[:id])
      @blog.destroy
      redirect_to blogs_path, notice: 'Blog deleted'
  end

  def create
    @blog = Blog.new(blog_params)
    set_author_id
    if @blog.save
      redirect_to @blog, notice: "#{@blog.title.upcase} added to blogs."
    else
      render :new
    end
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to @blog, notice: "#{@blog.title.upcase} added to blogs."
    else
      render :new
    end
  end

  private

  def get_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title,
                                 :sub_title,
                                 :subject,
                                 :body,
                                 :author_id)
  end

  def set_author_id 
    # This would include logic in order to set the author_id based on the user that is logged in. since this app does not include this function the author_id will be set to guest (1)
    @blog.author_id = 1 #if @blog.author_id.nil?
  end


end
