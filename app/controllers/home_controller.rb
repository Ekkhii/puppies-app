class HomeController < ApplicationController
  def index
  	
  end

    def send_mail

	   if ContactMailer.contact.deliver_now

	        redirect_to root_path

	    else

	        redirect_to root_path

	    end
    end

  
end
