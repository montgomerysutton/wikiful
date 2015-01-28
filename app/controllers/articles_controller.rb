class ArticlesController < ApplicationController
	def index
		@articles = Article.order(updated_at: :desc).limit(25)
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render "new"
		end
	end

	def update

	end

	def destory

	end

    def show_categories
    	self.categories.each do |category|
            print category.name
    		if category.id != self.categories.last.id
    			print " / "
    		end
    	end
    end

	private
		def article_params
			params.require(:article).permit(:title, :content, :category_ids => [])
		end


end
