class HomeController < ApplicationController
	def index
	end

	def city
		
	end

    def send_mail
	   if ContactMailer.contact.deliver_now
	        redirect_to root_path
	    else
	        redirect_to root_path
	    end
    end

    def send_newsletter
    	@users = User.all
    	@users.each do |user|
    		if user.newsletter
	    		@email = user.email
	    		WeeklyNewsletter.send_newsletter(@email).deliver_now
	    	end
    	end
    	
    		redirect_to root_path

    end

    def insta
    	BotInsta.new.perform
    end

    def services
    	
    end

  
end
