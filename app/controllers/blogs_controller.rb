class BlogsController < ApplicationController

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog, notice: "#{@blog.title.upcase} added to blogs."
    else
      render :new
    end

  end
end
