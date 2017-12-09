class PagesController < ApplicationController
  before_action :get_blogs, only: [:titles, :subjects]

  def home
  end

  def authors
    @authors = Author.all
  end

  def titles
  end

  def subjects
  end

  private

  def get_blogs
    @blogs = Blog.all
  end
end
