class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    params[:comment][:user_email] = current_user
    @comment = @article.comments.create(params[:comment])
    redirect_to article_path(@article)
  end
end
