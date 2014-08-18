class SignupsController < ApplicationController

def index
	@vevents = Signup.all
end

def new
	@signup = Signup.new
	@event_id = params[:format]
	@user_id = current_user.id
end

def show
	@signup = Signup.new
end

def create
	@signup = Signup.new(signup_params)

	if @signup.save
		@signups = Signup.all
		redirect_to @signup
	else
		render 'new'
	end
end

private
	def signup_params
		params.require(:signup).permit(:event_id, :user_id)
	end

end
