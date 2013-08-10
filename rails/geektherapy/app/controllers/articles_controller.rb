class ArticlesController < ApplicationController
	
	def index 
		@articles = Article.search_for(params[:query])
	end

	def new
		@article = Article.new
	end
	
	def show
	end

	def create
		@article = Article.new(article_params)

		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

end

