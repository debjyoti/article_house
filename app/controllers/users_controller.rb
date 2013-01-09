class UsersController < ApplicationController

  authorize_resource

  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def edit
    @user = User.find(params[:id])
    if @user.email == current_user.email then
      flash[:notice] = "Can not edit own user"
      redirect_to :back
    end
  end

  def update
    @user = User.find(params[:id])
    @user.role = params[:user][:role]

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_url }
        format.json { head :no_content }
      else
        format.html { render action:"edit" }
        format.json {render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.email == current_user.email then
      flash[:notice] = "Can not delete own user"
    else
      @user.destroy
    end

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
