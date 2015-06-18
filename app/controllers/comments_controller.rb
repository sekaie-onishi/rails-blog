class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
    end

    private CommentsController
        def comment_params
            params.require(:comment).permit(:comment, :body)
            redirect_to articles_path(@article)
        end
end
