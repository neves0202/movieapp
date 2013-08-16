class ArticlesController < ApplicationController
	before_action :load_article, :only => [:edit, :update, :show, :destroy]
	before_action :authenticate_user!, only: [:new, :create]



	def index 
		#@articles = @articles.points.descending.since(5.days.ago)

		@articles = Article.in_points_order.search_for(params[:query])
	end

	def show
		if params[:destroy]
    		render 'index' and return
		end
		@article.points += 100
		@article.views += 1
		@article.save
  	end


	def new
		@article = Article.new
	end
	
	def edit
	end

	def update
		
		if @article.update article_params
		 	redirect_to @article
				else
			render 'edit'
		end
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def destroy	
		@article.destroy
		redirect_to :action => :index

    end
 


private

def load_article

	@article = Article.find(params[:id])
end

def article_params
	params.require('article').permit(:questions, :description, :category)
end


end

