class ArticlesController < ApplicationController
	def index
		@articles = Article.order(updated_at: :desc).limit(25)
	end

	def show
		@article = Article.find(params[:id])
		@categories = ""

		@article.categories.each do |category|
			@categories += category.name
			if category.id != @article.categories.last.id # if this isn't the last category associated with the article
				@categories += " / " # add a divider
			end
		end

	end

	def new

	end

	def create

	end

	def update

	end

	def destory

	end

end
