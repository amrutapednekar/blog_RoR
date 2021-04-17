class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comments_params)
        redirect_to article_path(@article)
    end   
    private
    def comments_params
        params.require(:comment).permit(:commentor, :body)
    end    
end
