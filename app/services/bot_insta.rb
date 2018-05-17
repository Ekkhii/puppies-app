class BotInsta
require 'instabot'
	def comment_insta
		

		Config.setup do |set|
		 set.username             = 'birmame'
		 set.password             = 'coucou123'
		 set.tags                 = %w[dog]
		 
		 set.wait_per_action      = 5
		 set.max_like_per_day     = 500
		 set.max_follow_per_day   = 50
		 set.max_unfollow_per_day = 50
		 set.max_comment_per_day  = 500
		 set.log_status           = true
		 set.infinite_tags        = true
		 set.add_tag_per_post     = 5
		 set.print_banner         = true
		 set.pre_load             = false
		 set.comments             = [

		   %w[Hey],%w[there], %w[go], %w[check], %w[this], %w[website], %w[https://agile-anchorage-86029.herokuapp.com/]
		 ]
		end

		bot = Instabot.new
		bot.mode(:infinite) 
		
	end

	def perform

		comment_insta
		
	end

end
