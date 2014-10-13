helpers do 

	def current_player
		@current_player ||= Player.get(session[:player_id]) if session[:player_id]
	end
	
	
end