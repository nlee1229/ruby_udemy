class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy] # performs this method before the rest below but we only want it to take place for some of them

    def show
    end

    def index
        @articles = Article.all
    end

    def new 
        @article = Article.new
    end

    def edit
       
    end

    def update
        if @article.update(article_params)
            flash[:notice] = "Article was updated successfully."
            redirect_to @article
        else
            render 'edit'
        end
    end

    def create                                                  # keys that we want to permit to be used to create article instance
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was created successfully!"
        redirect_to @article # rails extracts id from @article 
        else
        render 'new' # renders new article template if article does not save
        end
    end

    def destroy
        @article.destroy
        redirect_to articles_path # articles_path will take us to articles listing page
    end

    private # any methods that I put below are available for use in this controller

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description) # params.require top level key :article
    end
end