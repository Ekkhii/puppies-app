class HomeController < ApplicationController
	def index
	end

	def city
		
	end

    def thp
        
    end

    def check_mail
        
    end

    def send_mail
	   if ContactMailer.contact.deliver_now
	        redirect_to root_path
	    else
	        redirect_to root_path
	    end
    end

    def confirm_newsletter
        @user = User.new
        @user.email = params[:email]
        @user.newsletter = false
        @user.random_string = (0...30).map { ('a'..'z').to_a[rand(26)] }.join
        puts @user.random_string
        @user.save
        if @user.save
            @email = @user.email
            puts @email
            ConfirmNewsletter.send_confirm_newsletter(@email).deliver_now
            redirect_to check_mail_path
            
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
