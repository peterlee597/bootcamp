class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: :index
    def index
      @categories = Category.all
    end
  
    def show
      @category = Category.find(params[:id])
      @articles = Article.all
      @author = Author.all
    end
  
    def new
      @category = Category.new
    end
  
    def create
      @category = Category.new(categories_params)
  
      if @category.save
        redirect_to @category
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def edit
      @category = Category.find(params[:id])
    end
  
    def update
      @category = Category.find(params[:id])
  
      if @category.update(categories_params)
        redirect_to @category
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @category = Category.find(params[:id])
      @category.destroy
  
      redirect_to root_path, status: :see_other
    end



    private
      def categories_params
        params.require(:category).permit(:name, :description)
      end
  end