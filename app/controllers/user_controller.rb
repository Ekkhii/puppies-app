class UserController < ApplicationController
	def subscribe
        puts ' on est dans subscribe'
        puts params.inspect
        @user = User.find_by(random_string: params[:random_string])
        puts @user.email
        @user.newsletter = true
        @user.save
        redirect_to root_path


    end

    def unsubscribe

        @user = User.find_by(random_string: params[:random_string])
        @user.newsletter = false
        @user.save
    end
end
