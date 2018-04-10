class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.json {render json: @user.to_json}
    end
  end

  def create
    puts(params[:user])
    @user = User.create(params[:user])
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete()
  end

  def update
    @user = User.find(params[:id])
    @user.update(:name)
    render json: @user
  end



end
