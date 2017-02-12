module ApplicationHelper
	def url_for_twitter(user)
		"https://twitter.com/#{user.nickname}" || "https://facebook.com/#{user.name}"
		
	end
end
