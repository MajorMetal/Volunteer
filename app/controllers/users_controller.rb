class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, except: [:new, :create]
  before_action :correct_user, except: [:new, :create] 
	
  def index
		@users = User.all
	end

	def new
    if current_user
      redirect_to current_user
    else 
      @user = User.new
    end
  end

	def create
		@user = User.new(user_params)

  	if @user.save
  	sign_in @user
   	 @users = User.all
    	redirect_to @user
  	else
    	render action: 'new'
    end
	end

  def edit
    @user = User.find(params[:id])

	end

	def update
	    respond_to do |format|
	      if @user.update(user_params)
	        format.html { redirect_to @user, notice: 'User was successfully updated.' }
	        format.json { render :show, status: :ok, location: @user }
	      else
	        format.html { render :edit }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
	    end
	end

  	def show
  		@user = User.find(params[:id])
		end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to @events_path
  end

private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def find_user
      @user = User.find(params[:id])
    end

    def correct_user
      find_user
      redirect_to(current_user) unless current_user?(@user)
    end


end
