class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    
    @user = User.new(params[:id])
    if @user.save
      redirect_to posts_path, :notice =>'user successfully addded'
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end

def update
  @user = User.find(params[:id])
  if @user.update_attributes(params[:user])
    redirect_to posts_path, :notice => 'updated user info successulf'
  else
    render :action => 'edit'  
    end
  end
end
