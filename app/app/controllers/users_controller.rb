class UsersController < ApplicationController
#this mean that action edit and update will be filer
before_filter :signed_in_user, only: [:edit, :update,:index, :destroy]
before_filter :correct_user,   only: [:edit, :update]

  def index
    @users = User.paginate(page:params[:page])
    logger.info "Username:#{@users[0].name.inspect}"
  end


  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end

 def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  def new
  @user = User.new
  end

  def show
   @user = User.find(params[:id])
  end

def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Resource Manager!"
      redirect_to @user
    else
      render 'new'
    end

  def edit
  @user=User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # Handle a successful update.
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
    render 'edit'
    end
   end


end
