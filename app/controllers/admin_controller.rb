class AdminController < ApplicationController
  def index
    if !current_user.admin
      redirect_to '/'
    end
    @users = User.all
  end
end
