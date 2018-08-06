class BooksController < ApplicationController
	def create
		@book = Book.new(book_params)

		respond_to do |format|
	    if @book.save
	      format.html { redirect_to @book, notice: 'Book was successfully created.' }
	      format.js
	    else
	      format.html { render action: "new" }
	    end
	  end
	end

	def new
		@book = Book.new
	end

	def index
		@books = Book.all
	end

	private
		def book_params
			params.require(:book).permit(:title,:isbn)
		end
end
