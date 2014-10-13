class UsersController < ApplicationController
	
	 def email
    @users = User.all
		puts @users.inspect 
		@users.each do |user|
		UserMailer.welcome_email(user)
	end
	redirect_to(invites_index_path)
  end
	
end
