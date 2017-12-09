class Author < ApplicationRecord
  has_many :blog

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author, notice: "#{@author.name.uppcase} authorized"
    else
      render :new
    end
  end



end
