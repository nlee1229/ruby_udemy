class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id]) # params[:id] is the id in the url which is a params. This is how we retrieve the article

    end
end