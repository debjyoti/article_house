class CommentsController < ApplicationController

  #load_and_authorize_resource :article
  #load_and_authorize_resource :comment, :through => :article
  authorize_resource

  def create
    @article = Article.find(params[:article_id])
    user_email_hash = { :user_email => current_user.try(:email) }
    @comment = @article.comments.create(params[:comment].merge(user_email_hash))
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id]) 

    respond_to do |format|
      format.html
      format.js 
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @article = @comment.article
    
    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to :back, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to (:back)
  end

  def index
    @comments = Comment.all
  end
end
