class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id]) # params[:id] is the id in the url which is a params. This is how we retrieve the article
    end

    def index
        @articles = Article.all
    end

    def new 
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id]) 
    end

    def update
        @article = Article.find(params[:id]) # creating an instance of an article and findig it by id
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice] = "Article was updated successfully."
            redirect_to @article
        else
            render 'edit'
        end
    end

    def create                                                  # keys that we want to permit to be used to create article instance
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
            flash[:notice] = "Article was created successfully!"
        redirect_to @article # rails extracts id from @article 
        else
        render 'new' # renders new article template if article does not save
        end
    end
end