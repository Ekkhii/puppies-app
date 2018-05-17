class HomeController < ApplicationController
  def index
  	
  end

    def send_mail

    	puts 'je suis dans send_mail'
    	puts params.inspect

    	@name = params.permit(:name)
    	puts @name
    	@email = params.permit(:email)
    	puts @email

	   if ContactMailer.contact.deliver_now

	        redirect_to root_path

	    else

	        redirect_to root_path

	    end
    end

  
end
