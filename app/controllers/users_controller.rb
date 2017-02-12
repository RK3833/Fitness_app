class UsersController < ApplicationController

	before_action :authenticate
	before_action :set_user,only:[:show,:edit,:update,:destroy]

	def retire
	end

	def destroy
		if current_user.destroy
			reset_session
			redirect_to root_path, notice: '退会完了しました'
		else
			render :retire
		end
	end

	def show
	end

	def likes
		@user = User.find(params[:id])
	end
	def edit
	end

	private
		def set_user
			@user = User.find(params[:id])
		end
end
