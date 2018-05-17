class UserController < ApplicationController
	def subscribe

    	@user = User.new
    	@user.email = params[:email]
    	@user.newsletter = true
        @user.random_string = (0...30).map { ('a'..'z').to_a[rand(26)] }.join
        puts @user.random_string
    	@user.save
    	if @user.save
    		flash[:notice] = "Vous etes inscrit à la newsletter"
       		
    	else
    		flash[:alert] = "Vous etes deja inscrit à la newsletter"
    	end
    	redirect_to root_path
    end

    def unsubscribe

        @user = User.find_by(random_string: params[:random_string])
        @user.newsletter = false
        @user.save
    end
end
