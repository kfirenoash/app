class BooksController < ApplicationController
  def show
      @post = Book.find(params[:id])
  end

  def index
      @posts = Book.all
      @post = Book.new
  end

  def new

  end

  def create
  	  post = Book.new(post_params)
  	  post.save
  	  redirect_to post_path(post), notice: 'Book was successfully created'
  end

  def edit
  	  @post = Book.find(params[:id])
  end

  def update
  	  post = Book.find(params[:id])
  	  post.update(post_params)
      redirect_to post_path(post), notice: 'Book was successfully updated.'
  end

  def destroy
  	  post = Book.find(params[:id])
  	  post.destroy
      redirect_to books_path, notice: 'Book was successfully destroyed.'
  end

  private
  def post_params
  	  params.require(:book).permit(:title, :body)

  end
end
