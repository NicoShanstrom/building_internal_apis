class Api::V1::BooksController < ApplicationController
  def index
    render json: Book.all
    # require 'pry'; binding.pry
  end

  def show
    render json: Book.find(params[:id])
  end

  def create
    render json: Book.create(book_params)
  end

  def update
    # book = Book.find(params[:id])
    render json: Book.update(params[:id], book_params)
  end

  def destroy
    render json: Book.delete(params[:id])
  end

  private

    def book_params
      params.require(:book).permit(:title, :author, :summary, :genre, :number_sold)
    end
end