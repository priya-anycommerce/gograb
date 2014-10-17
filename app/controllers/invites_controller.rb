class InvitesController < ApplicationController
  require "omnicontacts"
  def index
    
     @user = request.env['omnicontacts.user']
=begin
     if !User.exists?(:provider_id => @user.id)
    user= User.create(email: @user.email, provider_id:@user.id)
    user.save
    end
=end
     @contacts = request.env['omnicontacts.contacts']
     
    respond_to do |format|
      format.html
    end
  end
  

end
