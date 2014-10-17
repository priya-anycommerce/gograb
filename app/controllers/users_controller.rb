class UsersController < ApplicationController
	
	 def email
    @users = User.all
		@users.each do |user|
		UserMailer.welcome_email(user).deliver
	end
	redirect_to(invites_index_path)
  end
	
end
