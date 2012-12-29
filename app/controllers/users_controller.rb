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
  end

  def update
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
