class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
    	@user = User.new
  	end

	def create
		@user = User.new(user_params)

    	if @user.save
     	 @users = User.all
      	render action: 'index'
    	else
      	render action: 'new'
    	end
  	end

	private
	    def user_params
	    params.require(:user).permit(:name, :email)
	    end

end
