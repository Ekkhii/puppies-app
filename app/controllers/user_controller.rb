class UserController < ApplicationController
	def subscribe

    	@user = User.new
    	@user.email = params[:email]
    	@user.newsletter = true
    	@user.save
    	if @user.save
    		flash[:notice] = "Vous etes inscrit à la newsletter"
       		
    	else
    		flash[:alert] = "Vous etes deja inscrit à la newsletter"
    	end
    	redirect_to root_path
    end

    def unsubscribe

        @user = User.find(params[:id])
        @user.newsletter = false
        @user.save
    end
end
