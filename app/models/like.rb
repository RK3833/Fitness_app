class Like < ActiveRecord::Base
	belongs_to :events, counter_cache: :likes_count
	belongs_to :user


	validates :user, presence: true
	validates :user_id, uniqueness: { scope: :event_id}
	validates :event, presence: true
end

