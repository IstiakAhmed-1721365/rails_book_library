class BooksController < ApplicationController
    def index
        @list = Book.all
    end
    
    def show
        @book = Book.find(params[:id])
    end

    def new 
        @book = Book.new
    end

    def create
        @book = Book.new(allowed_params)

        if @book.save
            redirect_to books_path
        else
            render 'new'
        end
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])

        if @book.update(allowed_params)
            redirect_to @book
        else
            render 'edit'
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy

        redirect_to books_path
    end
    
=begin     def humidify
        @book = Book.find(params[:id])
        if @book.id % 2 == 0
            redirect to humidify_path
        else
            redirect_to books_path
        end
    end 
=end



    private
    
    def allowed_params
        params.require(:book).permit(:title, :author, :price, :publish_date)
    end


end
