class CategoriesController < ApplicationController
	def index
		@categories = Category.order(name: :desc).limit(25)
	end

	def show
		@category = Category.find(params[:id])
	end

	def new
		@article = Article.new
	end

end
