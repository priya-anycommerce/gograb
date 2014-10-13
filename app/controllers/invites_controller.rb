class InvitesController < ApplicationController
  require "omnicontacts"
  def index
    puts params.inspect
      @contacts = request.env['omnicontacts.contacts']
    puts @contacts.inspect
    @user = request.env['omnicontacts.user']
    puts @user.inspect
    respond_to do |format|
      format.html
    end
  end
  

end
