class LikesController < ApplicationController
	def create
		@like = Like.create(user_id: current_user.id, event_id: params[:event_id])
		@likes = Like.where(event_id: params[:event_id])
		# @events = Event.all
	end

	def destroy
		like = Like.find_by(user_id: current_user.id, event_id: params[:event_id])
		like.destroy
		@likes = Like.where(event_id: params[:event_id])
		# @events = Event.all
	end
	
end
